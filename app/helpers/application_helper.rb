module ApplicationHelper
  # This is a custom helper that returns the full title on a per-page basis
  # When writing ordinary Ruby, you often write modules and include them explicitly yourself
  # But in the case of a helper module, Rails handles the inclusion for us

  # If no title is specified using `provide`, it'll default to the base_title
  # Otherwise, it'll add the title in `provide` with the base_title separated by |
  def full_title(page_title = '')     # Optional/default argument
    base_title = "Twitter on Rails"
    if page_title.empty?
      base_title                      # Implicit return
    else
      "#{page_title} | #{base_title}"
    end
  end
end
