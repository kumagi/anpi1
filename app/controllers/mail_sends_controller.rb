class MailSendsController < ApplicationController
  # GET /mail_sends
  # GET /mail_sends.json
  def index
    @mail_sends = MailSend.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mail_sends }
    end
  end
#
#  def sendmail
  def show
	@mail = TanjiMailer.tanji.deliver
	render :text => "Sent a mail"
  end
  
  #def show
    # mail_send_actiuon = my_mailer.create_result()
     #my_mailer.deliver()
  #   my_mailer.deliver(show)
 # end


  # GET /mail_sends/1
  # GET /mail_sends/1.json
 # def show
 #   @mail_send = MailSend.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.json { render json: @mail_send }
#    end
#  end

  # GET /mail_sends/new
  # GET /mail_sends/new.json
  def new
    @mail_send = MailSend.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mail_send }
    end
  end

  # GET /mail_sends/1/edit
  def edit
    @mail_send = MailSend.find(params[:id])
  end

  # POST /mail_sends
  # POST /mail_sends.json
  def create
    @mail_send = MailSend.new(params[:mail_send])

    respond_to do |format|
      if @mail_send.save
        format.html { redirect_to @mail_send, notice: 'Mail send was successfully created.' }
        format.json { render json: @mail_send, status: :created, location: @mail_send }
      else
        format.html { render action: "new" }
        format.json { render json: @mail_send.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mail_sends/1
  # PUT /mail_sends/1.json
  def update
    @mail_send = MailSend.find(params[:id])

    respond_to do |format|
      if @mail_send.update_attributes(params[:mail_send])
        format.html { redirect_to @mail_send, notice: 'Mail send was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mail_send.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_sends/1
  # DELETE /mail_sends/1.json
  def destroy
    @mail_send = MailSend.find(params[:id])
    @mail_send.destroy

    respond_to do |format|
      format.html { redirect_to mail_sends_url }
      format.json { head :no_content }
    end
  end
end
