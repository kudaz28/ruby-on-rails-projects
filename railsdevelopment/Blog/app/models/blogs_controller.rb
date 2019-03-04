class BlogsController < ApplicationController

	# List articles or events
	# Main page

	def index
		# Pull out every single blog in the database from the model
		@blogs = Blog.all
	end

	# Security method
	def blog_params
		params.require(:blog).permit(:title, :body)
	end

	# Display a form to create a new blog
	def new
		# Create new instance of a blog used to create a form
		@blog = Blog.new
	end

	# Creates the form in the database using model 
	# Redirect back to the index page to show the new blog

	def create
		# Use security method tp pull out the title and body and pass it as a parameter
		@blog = Blog.new(blog_params)

		if @blog.save
			redirect_to blogs_path, :notice => "Your blog was succesfully created"
		else
			# If blog is not created succesfully , render the new page again
			render "new"
		end
	end

	# Edit and pass to update
	def edit
		@blog = Blog.find(params[:id])
	end

	# Update in the database and pass back to the index or any page
	def update
		@blog = Blog.find(params[:id])

		# Use security method tp pull out the title and body and pass it as a parameter
		if @blog.update_attribute(blog_params)
			redirect_to blogs_path, :notice => "Your blog was succesfully updated. Database has been updated"
		else
			# If blog is not created succesfully , render the edit page again
			render "edit"
		end
	end

	# Show the form
	def show
		@blog = Blog.find(params[:id])
	end

	# Delete records in the database 
	def destory
		# Find the blog to delete by id
		@blog = Blog.find(params[:id])

		# Once the blog is retrieved pr found, use the delete method
		@blog.destory

		# Redirect back to the index page and display a message using the flash system
		redirect_to blogs_path, :notice => "Your blog was succesfully deleted. Database has been updated"

	end
end
