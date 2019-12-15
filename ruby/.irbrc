# Runtime Configuration for IRB (Interactive Ruby)
require 'irb/completion'

IRB.conf[:AUTO_INDENT] = true

# History configuration
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV["HOME"]}/.history/ruby"

# Custom Prompt

IRB.conf[:PROMPT][:MY_PROMPT] = {
  :AUTO_INDENT => true,
  :PROMPT_I => "\033[1;31m>>\033[0m ",
  :PROMPT_S => "\033[1;31m\">\033[0m ",
  :PROMPT_C => "\033[1;31m?>\033[0m ",
  :RETURN => "\033[1;35m=>\033[0m %s\n"
}
IRB.conf[:PROMPT_MODE] = :MY_PROMPT
