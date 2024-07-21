local colors = require "material.colors"

local m = colors.main
local e = colors.editor
local g = colors.git
local l = colors.lsp

local M = {}

M.load = function()
    local plugin_hls = {
        MiniAnimateCursor             = { reverse = true, nocombine = true },
        MiniAnimateNormalFloat        = { link = "NormalFloat" },
        MiniClueBorder                = { link = "FloatBorder" },
        MiniClueDescGroup             = { link = "DiagnosticFloatingWarn" },
        MiniClueDescSingle            = { link = "NormalFloat" },
        MiniClueNextKey               = { link = "DiagnosticFloatingHint" },
        MiniClueNextKeyWithPostkeys   = { link = "DiagnosticFloatingError" },
        MiniClueSeparator             = { link = "DiagnosticFloatingInfo" },
        MiniClueTitle                 = { link = "FloatTitle" },
        MiniCompletionActiveParameter = { underline = true },
        MiniCursorword                = { underline = true },
        MiniCursorwordCurrent         = { underline = true },
        MiniDepsChangeAdded           = { link = "diffAdded" },
        MiniDepsChangeRemoved         = { link = "diffRemoved" },
        MiniDepsHint                  = { link = "DiagnosticHint" },
        MiniDepsInfo                  = { link = "DiagnosticInfo" },
        MiniDepsMsgBreaking           = { link = "DiagnosticWarn" },
        MiniDepsPlaceholder           = { link = "Comment" },
        MiniDepsTitle                 = { link = "Title" },
        MiniDepsTitleError            = { link = "DiffDelete" },
        MiniDepsTitleSame             = { link = "DiffText" },
        MiniDepsTitleUpdate           = { link = "DiffAdd" },
        MiniDiffSignAdd               = { fg = g.added },
        MiniDiffSignChange            = { fg = g.modified },
        MiniDiffSignDelete            = { fg = g.removed },
        MiniDiffOverAdd               = { link = "DiffAdd" },
        MiniDiffOverChange            = { link = "DiffText" },
        MiniDiffOverContext           = { link = "DiffChange" },
        MiniDiffOverDelete            = { link = "DiffDelete" },
        MiniFilesBorder               = { link = "FloatBorder" },
        MiniFilesBorderModified       = { link = "DiagnosticFloatingWarn" },
        MiniFilesCursorLine           = { link = "CursorLine" },
        MiniFilesDirectory            = { link = "Directory" },
        MiniFilesFile                 = { fg = e.fg },
        MiniFilesNormal               = { link = "NormalFloat" },
        MiniFilesTitle                = { link = "FloatTitle" },
        MiniFilesTitleFocused         = { fg = e.title, bold = true },
        MiniHipatternsFixme           = { fg = e.bg, bg = l.error, bold = true },
        MiniHipatternsHack            = { fg = e.bg, bg = l.warning, bold = true },
        MiniHipatternsNote            = { fg = e.bg, bg = l.info, bold = true },
        MiniHipatternsTodo            = { fg = e.bg, bg = l.hint, bold = true },
        MiniIconsAzure                = { fg = m.paleblue },
        MiniIconsBlue                 = { fg = m.blue },
        MiniIconsCyan                 = { fg = m.cyan },
        MiniIconsGreen                = { fg = m.green },
        MiniIconsGrey                 = { fg = m.white },
        MiniIconsOrange               = { fg = m.orange },
        MiniIconsPurple               = { fg = m.purple },
        MiniIconsRed                  = { fg = m.red },
        MiniIconsYellow               = { fg = m.yellow },
        MiniIndentscopeSymbol         = { fg = e.border },
        MiniIndentscopePrefix         = { nocombine = true },
        MiniJump                      = { fg = e.bg, bg = e.accent },
        MiniJump2dDim                 = { link = "Comment" },
        MiniJump2dSpot                = { fg = e.accent, bold = true, nocombine = true },
        MiniJump2dSpotAhead           = { fg = m.paleblue, bg = e.bg_alt, nocombine = true },
        MiniJump2dSpotUnique          = { fg = m.purple, bold = true, nocombine = true },
        MiniMapNormal                 = { link = "NormalFloat" },
        MiniMapSymbolCount            = { fg = m.purple },
        MiniMapSymbolLine             = { fg = m.cyan },
        MiniMapSymbolView             = { fg = m.blue },
        MiniNotifyBorder              = { link = "FloatBorder" },
        MiniNotifyNormal              = { link = "NormalFloat" },
        MiniNotifyTitle               = { link = "FloatTitle" },
        MiniOperatorsExchangeFrom     = { link = "IncSearch" },
        MiniPickBorder                = { link = "FloatBorder" },
        MiniPickBorderBusy            = { link = "DiagnosticFloatingWarn" },
        MiniPickBorderText            = { link = "FloatTitle" },
        MiniPickIconDirectory         = { link = "Directory" },
        MiniPickIconFile              = { link = "MiniPickNormal" },
        MiniPickHeader                = { link = "DiagnosticFloatingHint" },
        MiniPickMatchCurrent          = { link = "CursorLine" },
        MiniPickMatchMarked           = { link = "Visual" },
        MiniPickMatchRanges           = { link = "DiagnosticFloatingHint" },
        MiniPickNormal                = { link = "NormalFloat" },
        MiniPickPreviewLine           = { link = "CursorLine" },
        MiniPickPreviewRegion         = { link = "IncSearch" },
        MiniPickPrompt                = { link = "DiagnosticFloatingInfo" },
        MiniStarterCurrent            = { nocombine = true },
        MiniStarterFooter             = { fg = m.yellow, italic = true },
        MiniStarterHeader             = { fg = e.comments },
        MiniStarterInactive           = { link = "Comment" },
        MiniStarterItem               = { link = "Normal" },
        MiniStarterItemBullet         = { fg = e.border },
        MiniStarterItemPrefix         = { fg = m.yellow },
        MiniStarterSection            = { fg = m.cyan },
        MiniStarterQuery              = { fg = m.paleblue },
        MiniStatuslineDevinfo         = { fg = e.fg, bg = e.active },
        MiniStatuslineFileinfo        = { link = "MiniStatuslineDevinfo" },
        MiniStatuslineFilename        = { fg = e.disabled, bg = e.bg },
        MiniStatuslineInactive        = { link = "MiniStatuslineFilename" },
        MiniStatuslineModeCommand     = { fg = e.bg, bg = m.yellow, bold = true },
        MiniStatuslineModeInsert      = { fg = e.bg, bg = m.yellow, bold = true },
        MiniStatuslineModeNormal      = { fg = e.bg, bg = e.accent, bold = true },
        MiniStatuslineModeOther       = { fg = e.bg, bg = m.cyan, bold = true },
        MiniStatuslineModeReplace     = { fg = e.bg, bg = m.red, bold = true },
        MiniStatuslineModeVisual      = { fg = e.bg, bg = m.purple, bold = true },
        MiniSurround                  = { link = "IncSearch" },
        MiniTablineCurrent            = { fg = e.bg, bg = e.accent, bold = true },
        MiniTablineFill               = { link = "TabLineFill" },
        MiniTablineHidden             = { fg = e.fg, bg = e.bg },
        MiniTablineModifiedCurrent    = { fg = e.accent, bg = e.bg, bold = true },
        MiniTablineModifiedHidden     = { fg = e.bg, bg = e.fg },
        MiniTablineModifiedVisible    = { fg = e.accent, bg = e.bg },
        MiniTablineTabpagesection     = { fg = e.title, bg = e.selection, bold = true },
        MiniTablineVisible            = { fg = e.bg, bg = e.accent },
        MiniTestEmphasis              = { bold = true },
        MiniTestFail                  = { fg = m.red, bold = true },
        MiniTestPass                  = { fg = m.yellow, bold = true },
        MiniTrailspace                = { bg = m.red },
    }

    return plugin_hls
end

M.async = true

return M
