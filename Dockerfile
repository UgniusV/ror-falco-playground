# Use the official Ruby image from Docker Hub
FROM ruby:3.1.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs

# Set an environment variable to prevent any prompts during Gem installation
ENV BUNDLE_PATH /gems

# Set the working directory
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the /app directory
COPY Gemfile Gemfile.lock /app/

# Install the gems specified in the Gemfile
RUN bundle install

# Copy the rest of the application code into the /app directory
COPY . /app

# Expose port 3000 for the Rails server
EXPOSE 3000

RUN gem install rails
# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
