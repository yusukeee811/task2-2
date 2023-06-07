class BookCommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @book_comment = BookComment.new(book_comment_params)
    @book_comment.book_id = @book.id
    @book_comment.user_id = current_user.id
    unless @book_comment.save
      render 'error'  # app/views/book_comments/error.js.erbを参照する ※要件外
    end
    # app/views/book_comments/create.js.erbを参照する
  end

  def destroy
    @book = Book.find(params[:book_id])
    @book_comment = @book.book_comments.find(params[:id])
    @book_comment.destroy
    # app/views/book_comments/destroy.js.erbを参照する
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end