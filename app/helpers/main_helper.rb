module MainHelper
  
  def show_params
    case 
    when @selected_type == "1st_Order"
      @order_typ= "1st Order"
    when @selected_type == "2nd_Order"
      @order_typ = "2nd Order" 
    when @selected_type == "3rd_Order"
      @order_typ = "3rd Order"   
    else 
      @order_typ = "4th Order"  
    end  
     case 
    when @order_type2== 5
      @order_typ2= "Butterworth"
    when @order_type2 == 6
      @order_typ2 = "Solen Split"
    when @order_type2 == 7
      @order_typ2 = "Linkwitz-Riley" 
    when @order_type2 == 8
      @order_typ2 = "Bessel"    
    else 
      @order_typ2 = "4th Order"  
    end    
    
    html= "<h4 class='text-info'>Crossover: #{@order_typ} #{@order_typ2} @ #{@freq_one} Hz</h4>"
    html+= "<h5 class='text-info'>Tweeter: #{@tweeter} Ohms,&nbsp;Woofer: #{@woofer} Ohms</h5>"
  
    case 
    when @selected_type == "1st_Order"
      html+= "<h5 class='text-info'>Parts list:<br/>C1= &nbsp;#{@c1.round(2)}&micro;f L1=&nbsp;#{@l1.round(2)}mH </h5>"
    when @selected_type == "2nd_Order"
      html+= "<h5 class='text-info'>Parts list:<br/>C1= &nbsp;#{@c1.round(2)}&micro;f  L1=&nbsp;#{@l1.round(2)} mH 
      <br/>C2= &nbsp;#{@c2.round(2)}&micro;f L2=&nbsp;#{@l2.round(2)} mH</h5>"
    when @selected_type == "3rd_Order"
      html+= "<h5 class='text-info'>Parts list:<br/>C1= &nbsp;#{@c1.round(2)}&micro;f L1=&nbsp;#{@l1.round(2)} mH  
      <br/>C2= &nbsp;#{@c2.round(2)}&micro;f L2=&nbsp;#{@l2.round(2)} mH<br/>C3=&nbsp;#{@c3.round(2)}&micro;f  L2=&nbsp;#{@l3.round(2)}mH </h5>"
     when @selected_type == "4th_Order"
      html+= "<h5 class='text-info'>Parts list:<br/>C1= &nbsp;#{@c1.round(2)}&micro;f L1=&nbsp;#{@l1.round(2)} mH  
      <br/>C2= &nbsp;#{@c2.round(2)}&micro;f L2=&nbsp;#{@l2.round(2)} mH<br/>C3=&nbsp;#{@c3.round(2)}&micro;f  L3=&nbsp;#{@l3.round(2)}mH
      <br/>C4=&nbsp;#{@c4.round(2)}&micro;f  L4=&nbsp;#{@l4.round(2)}mH</h5>"  
    else
        html+= "<h5 class='text-info'>Parts list:<br/>C1= &nbsp;#{@c1}&micro;f L1=&nbsp;#{@l1}mH </h5>"
    end  
    return html.html_safe
    
  end
  
  
end

 