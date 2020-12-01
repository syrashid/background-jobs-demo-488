class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "Calling Clearbit Enrichment API for #{user.email}..."
    # TODO: perform a time consuming task like Clearbit's Enrichment API.
    sleep 10
    puts "Done! Enriched #{user.email} with Clearbit"
  end
end
