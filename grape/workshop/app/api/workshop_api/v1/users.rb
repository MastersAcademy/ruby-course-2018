module WorkshopApi
  module V1
    class Users < BaseV1
      namespace :users do
        params do
          requires :user, type: Hash do
            requires :email, type: String, regexp: User::EMAIL_REGEXP
            requires :password, type: String
          end
        end
        post do
          entity = User.new(declared_params[:user])

          if entity.save
            present :entity, entity, with: WorkshopApi::Entities::UserEntity::Me
          else
            error!(entity.errors.messages, 422)
          end
        end

        namespace :me do
          before { authenticate }

          get do
            present :entity, current_user, with: WorkshopApi::Entities::UserEntity::Me
          end
          params do
            
          end

          put do
          end
        end
      end
    end
  end
end