class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
    @book = Bookmark.new   # ← これを追加！
  end

  def create
    @book = Bookmark.new(bookmark_params)
    if @book.save
      redirect_to bookmarks_path, notice: "ブックマークを登録しました"
    else
      @bookmarks = Bookmark.all  # エラー時にも一覧が必要
      render :index
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :author, :published_date, :url)
  end
end
