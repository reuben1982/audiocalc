class MainController < ApplicationController
  def home
  end
  
 
  def twoway 
    @order_types = %w(1st_Order 2nd_Order 3rd_Order 4th_Order)
    @order_type2 = params[:order_type2].to_i
    @selected_type = params[:order_type]
    @selected_type2 = params[:order_type2]
    
    @freq_one = params[:freq_one].to_i
    @tweeter = params[:tweeter].to_i
    @woofer = params[:woofer].to_i
    case 
     when @selected_type == "1st_Order" && @order_type2 == 5 
      @c1 = (0.159 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1592 * @woofer / @freq_one) * 1000
     when @selected_type == "1st_Order" && @order_type2 == 6 
      @c1 = (0.1125 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.2251 * @woofer / @freq_one) * 1000
     when @selected_type == "2nd_Order" && @order_type2 == 5 
      @c1 = (0.1125 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.2251 * @woofer / @freq_one) * 1000
      @c2 = (0.1125 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.2251 * @tweeter / @freq_one) * 1000
     when @selected_type == "2nd_Order" && @order_type2 == 7 
      @c1 = (0.07959 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.3183 * @woofer / @freq_one) * 1000
      @c2 = (0.07959 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.3183 * @tweeter / @freq_one) * 1000
     when @selected_type == "2nd_Order" && @order_type2 == 8 
       @c1 = (0.0912 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.2756 * @woofer / @freq_one) * 1000
      @c2 = (0.0912 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.2756 * @tweeter / @freq_one) * 1000
    when @selected_type == "3rd_Order" && @order_type2 == 5 
      @c1 = (0.1061 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1194 * @woofer / @freq_one) * 1000
      @c2 = (0.3183 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.2387 * @tweeter / @freq_one) * 1000
      @c3 = (0.2122 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.0796 * @tweeter / @freq_one) * 1000
     when @selected_type == "3rd_Order" && @order_type2 == 8 
      @c1 = (0.0791 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1317 * @woofer / @freq_one) * 1000
      @c2 = (0.3953 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.3294* @tweeter / @freq_one) * 1000
      @c3 = (0.1897 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.0659 * @tweeter / @freq_one) * 1000
     when @selected_type == "4th_Order" && @order_type2 == 5 
      @c1 = (0.1040 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1009 * @woofer / @freq_one) * 1000
      @c2 = (0.1470 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.4159 * @tweeter / @freq_one) * 1000
      @c3 = (0.2509 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.2437 * @tweeter / @freq_one) * 1000 
      @c4 = (0.0609 / (@woofer * @freq_one)) * 1000000
      @l4 =  (0.1723 * @tweeter / @freq_one) * 1000 
     when @selected_type == "4th_Order" && @order_type2 == 7 
      @c1 = (0.0844/ (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1001 * @woofer / @freq_one) * 1000
      @c2 = (0.1688 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.4502 * @tweeter / @freq_one) * 1000
      @c3 = (0.2533 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.3001 * @tweeter / @freq_one) * 1000 
      @c4 = (0.0563 / (@woofer * @freq_one)) * 1000000
      @l4 =  (0.1501 * @tweeter / @freq_one) * 1000 
     when @selected_type == "4th_Order" && @order_type2 == 8 
      @c1 = (0.0702 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.0862 * @woofer / @freq_one) * 1000
      @c2 = (0.0719 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.4983 * @tweeter / @freq_one) * 1000
      @c3 = (0.2336 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.3583 * @tweeter / @freq_one) * 1000 
      @c4 = (0.0504 / (@woofer * @freq_one)) * 1000000
      @l4 =  (0.1463 * @tweeter / @freq_one) * 1000 
      
    end  
   
  end
  def threeway
    
    @order_types = %w(1st_Order 2nd_Order 3rd_Order 4th_Order)
    @order_type2 = params[:order_type2].to_i
    @selected_type = params[:order_type]
    @selected_type2 = params[:order_type2]
    
    @freq_one = params[:freq_one].to_i
    @freq_two= params[:freq_two].to_i
    @tweeter = params[:tweeter].to_i
    @woofer = params[:woofer].to_i
    @mid = params[:mid].to_i
    case 
     when @selected_type == "1st_Order" && @order_type2 == 5 
      @c1 = (0.159 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1592 * @woofer / @freq_one) * 1000
     when @selected_type == "1st_Order" && @order_type2 == 6 
      @c1 = (0.1125 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.2251 * @woofer / @freq_one) * 1000
     when @selected_type == "2nd_Order" && @order_type2 == 5 
      @c1 = (0.1125 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.2251 * @woofer / @freq_one) * 1000
      @c2 = (0.1125 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.2251 * @tweeter / @freq_one) * 1000
     when @selected_type == "2nd_Order" && @order_type2 == 7 
      @c1 = (0.07959 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.3183 * @woofer / @freq_one) * 1000
      @c2 = (0.07959 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.3183 * @tweeter / @freq_one) * 1000
     when @selected_type == "2nd_Order" && @order_type2 == 8 
       @c1 = (0.0912 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.2756 * @woofer / @freq_one) * 1000
      @c2 = (0.0912 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.2756 * @tweeter / @freq_one) * 1000
    when @selected_type == "3rd_Order" && @order_type2 == 5 
      @c1 = (0.1061 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1194 * @woofer / @freq_one) * 1000
      @c2 = (0.3183 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.2387 * @tweeter / @freq_one) * 1000
      @c3 = (0.2122 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.0796 * @tweeter / @freq_one) * 1000
     when @selected_type == "3rd_Order" && @order_type2 == 8 
      @c1 = (0.0791 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1317 * @woofer / @freq_one) * 1000
      @c2 = (0.3953 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.3294* @tweeter / @freq_one) * 1000
      @c3 = (0.1897 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.0659 * @tweeter / @freq_one) * 1000
     when @selected_type == "4th_Order" && @order_type2 == 5 
      @c1 = (0.1040 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1009 * @woofer / @freq_one) * 1000
      @c2 = (0.1470 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.4159 * @tweeter / @freq_one) * 1000
      @c3 = (0.2509 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.2437 * @tweeter / @freq_one) * 1000 
      @c4 = (0.0609 / (@woofer * @freq_one)) * 1000000
      @l4 =  (0.1723 * @tweeter / @freq_one) * 1000 
     when @selected_type == "4th_Order" && @order_type2 == 7 
      @c1 = (0.0844/ (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.1001 * @woofer / @freq_one) * 1000
      @c2 = (0.1688 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.4502 * @tweeter / @freq_one) * 1000
      @c3 = (0.2533 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.3001 * @tweeter / @freq_one) * 1000 
      @c4 = (0.0563 / (@woofer * @freq_one)) * 1000000
      @l4 =  (0.1501 * @tweeter / @freq_one) * 1000 
     when @selected_type == "4th_Order" && @order_type2 == 8 
      @c1 = (0.0702 / (@tweeter * @freq_one)) * 1000000
      @l1 =  (0.0862 * @woofer / @freq_one) * 1000
      @c2 = (0.0719 / (@woofer * @freq_one)) * 1000000
      @l2 =  (0.4983 * @tweeter / @freq_one) * 1000
      @c3 = (0.2336 / (@woofer * @freq_one)) * 1000000
      @l3 =  (0.3583 * @tweeter / @freq_one) * 1000 
      @c4 = (0.0504 / (@woofer * @freq_one)) * 1000000
      @l4 =  (0.1463 * @tweeter / @freq_one) * 1000 
      
    end  
   
  end
  def enclosure
  end
  
  
end
