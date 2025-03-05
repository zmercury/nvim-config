--normal run csharp project without terminal window open
vim.api.nvim_create_user_command('Runcs', function()
  local file_dir = vim.fn.expand '%:p:h'
  local cmd = 'cd ' .. file_dir .. ' && dotnet run'
  local success, result = pcall(function()
    vim.cmd('!' .. cmd)
  end)
  if not success then
    vim.notify('Failed to run dotnet: ' .. tostring(result), vim.log.levels.ERROR)
  end
end, { nargs = 0 })

vim.api.nvim_create_user_command('Createcs', function()
  local file_dir = vim.fn.expand '%:p:h'
  local cmd = 'cd ' .. file_dir .. ' && dotnet new console --use-program-main true'
  local success, result = pcall(function()
    vim.cmd('!' .. cmd)
  end)
  if not success then
    vim.notify('Failed to run dotnet: ' .. tostring(result), vim.log.levels.ERROR)
  end
end, { nargs = 0 })

-- Function to open PowerShell in the current file's directory in a horizontal split
local function open_powershell_in_current_dir()
  local current_file_dir = vim.fn.expand '%:p:h'
  -- Use 'term_start' to open a terminal in a split
  vim.cmd('lcd ' .. current_file_dir)
  vim.cmd('vsplit | terminal powershell.exe -NoExit -Command "cd \'' .. current_file_dir .. '\'"')
end

-- Command :Term to call the function
vim.api.nvim_create_user_command('Term', open_powershell_in_current_dir, {})

-- Code to display output window
--[[
vim.api.nvim_create_user_command('Runcs', function()
  local file_dir = vim.fn.expand '%:p:h'
  local cmd = 'cd ' .. file_dir .. ' && dotnet run'

  -- Create a buffer
  local buf = vim.api.nvim_create_buf(false, true)

  -- Get editor dimensions
  local width = vim.o.columns
  local height = vim.o.lines

  -- Set window width
  local win_width = math.floor(width * 0.8)

  -- Create the floating window with an initial height and title
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = win_width,
    height = 10, -- Initial height, will grow based on content
    row = math.floor((height - 10) / 2),
    col = math.floor((width - win_width) / 2),
    style = 'minimal',
    border = 'rounded',
    title = 'Output', -- Add "Output" to the top-left border
    title_pos = 'left', -- Position the title on the left
  })

  -- Set buffer options
  vim.bo[buf].buftype = 'nofile'
  vim.bo[buf].modifiable = true

  local output_data = {} -- Store the output data

  -- Run dotnet run asynchronously and capture output
  vim.fn.jobstart(cmd, {
    stdout_buffered = true,
    stderr_buffered = true,
    on_stdout = function(_, data)
      if data then
        -- Filter out empty lines and remove carriage returns
        for i, line in ipairs(data) do
          line = line:gsub('\r', '') -- Remove carriage return
          if line ~= '' then -- Only add non-empty lines
            table.insert(output_data, line)
          end
        end

        -- Update the buffer with the filtered output
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, output_data)

        -- Calculate new height based on total output lines
        local output_height = #output_data
        local max_height = math.floor(height * 0.6) -- Set max height
        local win_height = math.min(output_height, max_height)

        -- Adjust window size after output is fully received
        vim.api.nvim_win_set_height(win, win_height)
      end
    end,
    on_stderr = function(_, data)
      if data then
        -- Filter out empty lines and remove carriage returns
        for i, line in ipairs(data) do
          line = line:gsub('\r', '') -- Remove carriage return
          if line ~= '' then -- Only add non-empty lines
            table.insert(output_data, line)
          end
        end

        -- Update the buffer with the filtered output
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, output_data)

        -- Calculate new height based on total output lines
        local output_height = #output_data
        local max_height = math.floor(height * 0.6) -- Set max height
        local win_height = math.min(output_height, max_height)

        -- Adjust window size after output is fully received
        vim.api.nvim_win_set_height(win, win_height)
      end
    end,
    on_exit = function()
      vim.bo[buf].modifiable = false
    end,
  })
end, { nargs = 0 })
--]]
