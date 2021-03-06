class TodoItemsController < ApplicationController
   def create
     @todo_list = TodoList.find(params[:todo_list_id])
     @todo_item = @todo_list.todo_items.create(todo_item_params)
   end

   private

   def set_todo_list
     @todo_list = TodoList.find(params[:todo_list_id])
   end

   def todo_item_params
     params[:todo_item].permit(content)
   end
end
