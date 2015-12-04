module ApplicationHelper
def br(str)
  h(str).gsub(/(\r\n?)|(\n)/, "<br />").html_safe
  end
end

# 改行を反映させるメソッド