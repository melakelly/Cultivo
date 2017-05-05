{"changed":true,"filter":false,"title":"orders_controller.rb","tooltip":"/app/controllers/orders_controller.rb","value":"class OrdersController < ApplicationController\n  before_action :set_order, only: [:show, :edit, :update, :destroy]\n\n  # GET /orders\n  # GET /orders.json\n  def index\n    @orders = Order.all\n  end\n\n  # GET /orders/1\n  # GET /orders/1.json\n  def show\n  end\n\n  # GET /orders/new\n  def new\n    cart_ids = $redis.smembers current_user_cart\n    @cart_produces = Produce.find(cart_ids)\n    @order = Order.new\n  end\n\n  def current_user_cart\n    \"cart#{current_user.id}\"\n  end\n  \n  # GET /orders/1/edit\n  def edit\n    cart_ids = $redis.smembers current_user_cart\n    @cart_produces = Produce.find(cart_ids)\n  end\n\n  # POST /orders\n  # POST /orders.json\n  def create\n    @order = Order.new(order_params)\n\n    respond_to do |format|\n      if @order.save\n        format.html { redirect_to @order, notice: 'Order was successfully created.' }\n        format.json { render :show, status: :created, location: @order }\n      else\n        format.html { render :new }\n        format.json { render json: @order.errors, status: :unprocessable_entity }\n      end\n    end\n  end\n\n  # PATCH/PUT /orders/1\n  # PATCH/PUT /orders/1.json\n  def update\n    respond_to do |format|\n      if @order.update(order_params)\n        format.html { redirect_to @order, notice: 'Order was successfully updated.' }\n        format.json { render :show, status: :ok, location: @order }\n      else\n        format.html { render :edit }\n        format.json { render json: @order.errors, status: :unprocessable_entity }\n      end\n    end\n  end\n\n  # DELETE /orders/1\n  # DELETE /orders/1.json\n  def destroy\n    @order.destroy\n    respond_to do |format|\n      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }\n      format.json { head :no_content }\n    end\n  end\n\n  private\n    # Use callbacks to share common setup or constraints between actions.\n    def set_order\n      @order = Order.find(params[:id])\n    end\n\n    # Never trust parameters from the scary internet, only allow the white list through.\n    def order_params\n      params.require(:order).permit(:title, :price, :amount, :username, :firstName, :lastName, :address, :city, :state, :zipcode, :phoneNumber, :comment)\n    end\nend\n","undoManager":{"mark":22,"position":24,"stack":[[{"start":{"row":15,"column":9},"end":{"row":16,"column":4},"action":"insert","lines":["","    "],"id":4,"ignore":true}],[{"start":{"row":16,"column":4},"end":{"row":16,"column":43},"action":"insert","lines":["@cart_produces = Produce.find(cart_ids)"],"id":5,"ignore":true}],[{"start":{"row":16,"column":4},"end":{"row":17,"column":4},"action":"insert","lines":["","    "],"id":6,"ignore":true}],[{"start":{"row":16,"column":4},"end":{"row":16,"column":48},"action":"insert","lines":["cart_ids = $redis.smembers current_user_cart"],"id":7,"ignore":true}],[{"start":{"row":11,"column":10},"end":{"row":13,"column":43},"action":"insert","lines":["","    cart_ids = $redis.smembers current_user_cart","    @cart_produces = Produce.find(cart_ids)"],"id":10,"ignore":true},{"start":{"row":18,"column":4},"end":{"row":18,"column":48},"action":"remove","lines":["cart_ids = $redis.smembers current_user_cart"]}],[{"start":{"row":18,"column":4},"end":{"row":19,"column":43},"action":"remove","lines":["","    @cart_produces = Produce.find(cart_ids)"],"id":11,"ignore":true}],[{"start":{"row":17,"column":9},"end":{"row":18,"column":4},"action":"remove","lines":["","    "],"id":12,"ignore":true}],[{"start":{"row":11,"column":10},"end":{"row":13,"column":43},"action":"remove","lines":["","    cart_ids = $redis.smembers current_user_cart","    @cart_produces = Produce.find(cart_ids)"],"id":13,"ignore":true}],[{"start":{"row":16,"column":4},"end":{"row":17,"column":4},"action":"insert","lines":["","    "],"id":14,"ignore":true}],[{"start":{"row":16,"column":4},"end":{"row":16,"column":48},"action":"insert","lines":["cart_ids = $redis.smembers current_user_cart"],"id":15,"ignore":true}],[{"start":{"row":16,"column":4},"end":{"row":16,"column":48},"action":"remove","lines":["cart_ids = $redis.smembers current_user_cart"],"id":16,"ignore":true}],[{"start":{"row":16,"column":4},"end":{"row":17,"column":62},"action":"insert","lines":["@produce = Produce.find(params[:id])","    @cart_produces = @produce.cart_action current_user.try :id"],"id":17,"ignore":true}],[{"start":{"row":16,"column":4},"end":{"row":17,"column":62},"action":"remove","lines":["@produce = Produce.find(params[:id])","    @cart_produces = @produce.cart_action current_user.try :id"],"id":18,"ignore":true},{"start":{"row":16,"column":4},"end":{"row":17,"column":43},"action":"insert","lines":["cart_ids = $redis.smembers current_user_cart","    @cart_produces = Produce.find(cart_ids)"]}],[{"start":{"row":20,"column":0},"end":{"row":23,"column":5},"action":"insert","lines":["","def current_user_cart","    \"cart#{current_user.id}\"","  end"],"id":19,"ignore":true}],[{"start":{"row":23,"column":5},"end":{"row":24,"column":2},"action":"insert","lines":["","  "],"id":20,"ignore":true}],[{"start":{"row":21,"column":0},"end":{"row":21,"column":2},"action":"insert","lines":["  "],"id":21,"ignore":true}],[{"start":{"row":26,"column":10},"end":{"row":27,"column":4},"action":"insert","lines":["","    "],"id":22,"ignore":true}],[{"start":{"row":27,"column":4},"end":{"row":28,"column":43},"action":"insert","lines":["    cart_ids = $redis.smembers current_user_cart","    @cart_produces = Produce.find(cart_ids)"],"id":23,"ignore":true}],[{"start":{"row":27,"column":4},"end":{"row":27,"column":8},"action":"remove","lines":["    "],"id":24,"ignore":true}],[{"start":{"row":67,"column":38},"end":{"row":68,"column":0},"action":"insert","lines":["",""],"id":42},{"start":{"row":68,"column":0},"end":{"row":68,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":68,"column":6},"end":{"row":69,"column":29},"action":"insert","lines":["cart = Cart.create","  session[:cart_id] = cart.id"],"id":43}],[{"start":{"row":69,"column":2},"end":{"row":69,"column":4},"action":"insert","lines":["  "],"id":44}],[{"start":{"row":69,"column":4},"end":{"row":69,"column":6},"action":"insert","lines":["  "],"id":45}],[{"start":{"row":68,"column":0},"end":{"row":69,"column":33},"action":"remove","lines":["      cart = Cart.create","      session[:cart_id] = cart.id"],"id":46}],[{"start":{"row":67,"column":38},"end":{"row":68,"column":0},"action":"remove","lines":["",""],"id":47}]]},"ace":{"folds":[],"scrolltop":540,"scrollleft":0,"selection":{"start":{"row":67,"column":38},"end":{"row":67,"column":38},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":7,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1493837944323}