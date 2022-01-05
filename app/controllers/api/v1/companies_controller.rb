module Api
    module V1
        class CompaniesController < ApplicationController
            def index
                companies = Company.all
                
                render json: CompanySerializer.new(companies).serialized_json
            end

            def show
                company = Company.find_by(slug: params[:slug])

                render json: CompanySerializer.new(company).serialized_json

            end
            
            def create
                company = Company.new(company_params)

                if company.save
                    render json: CompanySerializer.new(company).serialized_json
                else
                    render json: {error: company.errors.messages }, status: 422
                end

            end

            def update
                company = Company.find_by(slug: params)

                if company.update(company_params)
                    render json: CompanySerializer.new(company).serialized_json
                else
                    render json: {error: company.errors.messages }, status: 422
                end
                
            end

            def destroy
                company = Company.find_by(slug: params)

                if company.destroy
                    head :no_content
                else
                    render json: {error: company.errors.messages }, status: 422
                end
                
            end

            private
            def company_params
                params.require(:company).permit(:name, :image_url)
            end

            def options
                @options ||= { include: %i[reviews]}
            end
        end
        
    end
end  
