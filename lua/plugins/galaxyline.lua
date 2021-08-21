local galaxyline = require('galaxyline')

local colors = {
  bg = '#282c34',
  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#afd700',
  orange = '#FF8800',
  purple = '#5d4d7a',
  magenta = '#d16d9e',
  grey = '#c0c0c0',
  blue = '#0087d7',
  red = '#ec5f67'
}

-- extension Provider
local diagnostic = require('galaxyline.provider_diagnostic')
local vcs = require('galaxyline.provider_vcs')
local fileinfo = require('galaxyline.provider_fileinfo')
local extension = require('galaxyline.provider_extensions')
local colors = require('galaxyline.colors')
local buffer = require('galaxyline.provider_buffer')
local whitespace = require('galaxyline.provider_whitespace')
local lspclient = require('galaxyline.provider_lsp')

-- Providers
local BufferIcon  = buffer.get_buffer_type_icon
local BufferNumber = buffer.get_buffer_number
local FileTypeName = buffer.get_buffer_filetype

-- Git Provider
local GitBranch = vcs.get_git_branch
local DiffAdd = vcs.diff_add             -- support vim-gitgutter vim-signify gitsigns
local DiffModified = vcs.diff_modified   -- support vim-gitgutter vim-signify gitsigns
local DiffRemove = vcs.diff_remove       -- support vim-gitgutter vim-signify gitsigns

-- File Provider
local LineColumn = fileinfo.line_column
local FileFormat = fileinfo.get_file_format
local FileEncode = fileinfo.get_file_encode
local FileSize = fileinfo.get_file_size
local FileIcon = fileinfo.get_file_icon
local FileName = fileinfo.get_current_file_name
local LinePercent = fileinfo.current_line_percent
local ScrollBar = extension.scrollbar_instance
local VistaPlugin = extension.vista_nearest

-- Whitespace
local Whitespace = whitespace.get_item

-- Diagnostic Provider
local DiagnosticError = diagnostic.get_diagnostic_error
local DiagnosticWarn = diagnostic.get_diagnostic_warn
local DiagnosticHint = diagnostic.get_diagnostic_hint
local DiagnosticInfo = diagnostic.get_diagnostic_info

-- LSP
local GetLspClient = lspclient.get_lsp_client

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

galaxyline.section.left[1] = {
  FirstElement = {
    provider = function() return '▋' end,
    highlight = {colors.blue,colors.yellow}
  },
}

galaxyline.section.left[2] = {
  ViMode = {
    provider = function()
      local alias = {n = 'NORMAL',i = 'INSERT',c= 'COMMAND',v= 'VISUAL',V= 'VISUAL LINE', [''] = 'VISUAL BLOCK'}
      return alias[vim.fn.mode()]
    end,
    separator = ' ',
    separator_highlight = {
      colors.purple,function()
        if not buffer_not_empty() then
          return colors.purple
        end
        return colors.darkblue
      end
    },
    highlight = {colors.darkblue,colors.purple,'bold'},
  },

}

galaxyline.section.left[3]= {
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.darkblue},
  },
}

galaxyline.section.left[4] = {
  FileName = {
    provider = {'FileName','FileSize'},
    condition = buffer_not_empty,
    separator = '',
    separator_highlight = {colors.purple,colors.darkblue},
    highlight = {colors.magenta,colors.darkblue}
  }
}

galaxyline.section.left[5] = {
  GitIcon = {
    provider = {function() return '  ' end},
    condition = GitBranch,
    highlight = {colors.orange,colors.purple},
  }
}

galaxyline.section.left[6] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = GitBranch,
    highlight = {colors.grey,colors.purple},
  }
}

galaxyline.section.left[7] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.green,colors.purple},
  }
}

galaxyline.section.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.orange,colors.purple},
  }
}

galaxyline.section.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.red,colors.purple},
  }
}

galaxyline.section.left[10] = {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.purple}
  }
}

galaxyline.section.left[11] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}

galaxyline.section.left[12] = {
  Space = {
    provider = function () return ' ' end
  }
}

galaxyline.section.left[13] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}

galaxyline.section.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = ' ',
    separator_highlight = {colors.bg,colors.purple},
    highlight = {colors.grey,colors.purple},
  }
}

galaxyline.section.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {colors.darkblue,colors.purple},
    highlight = {colors.grey,colors.purple},
  },
}

galaxyline.section.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {colors.darkblue,colors.purple},
    highlight = {colors.grey,colors.darkblue},
  }
}

galaxyline.section.right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {colors.yellow,colors.purple},
  }
}

galaxyline.section.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.grey,colors.purple}
  }
}

galaxyline.section.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.grey,colors.purple}
  }
}