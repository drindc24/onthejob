module EmployeesHelper
  def panel(class_name, value, label, link)
     render :partial => "panel_view", :locals => { :class_name => class_name, :value => value, :label => label, :link => link }
  end
end
