module ApplicationHelper
  def current_page(path)
    "page" if path_matches_current_path(path)
  end

  def active_link(path)
    "active" if path_matches_current_path(path)
  end

  def path_matches_current_path(path)
    base_path = path.split("/").filter(&:present?).first
    if base_path
      current_path.include?(base_path)
    else
      current_path == path
    end
  end

  def current_path
    request.original_fullpath
  end
end
