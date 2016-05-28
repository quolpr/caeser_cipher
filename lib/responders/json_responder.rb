#:nodoc:
module Responders::JsonResponder
  protected

  # simply render the resource even on POST instead of redirecting for ajax
  def api_behavior
    if get?
      display resource
    elsif post?
      display resource, status: :created
    elsif put?
      display resource, status: :ok
    else
      head :no_content
    end
  end
end
