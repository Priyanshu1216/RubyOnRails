Filters in Rails


Filters are methods that are run "before", "after" or "around" a controller action.

Filters are inherited, so if you set a filter on ApplicationController, it will be run on every controller in your application.

"before" filters are registered via before_action. They may halt the request cycle.
A common "before" filter is one which requires that a user is logged in for an action to be run.

You can define the filter method this way:

class ApplicationController < ActionController::Base
  before_action :require_login

  private
    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to new_login_url # halts request cycle
      end
    end
end


While the most common way to use filters is by creating private methods and using before_action, after_action, or around_action to add them,
there are two other ways to do the same thing.