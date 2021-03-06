require 'spec_helper'
#describing what we should do...
describe "Creating lista de actividades" do

    def create_list_de_actividades(options = {})
        options[:title] ||= "Playing soccer"
        options[:description] ||= "With some friends"

        #visit the index page, and when...
        visit "/lista_de_actividades"
        #clinking the button it should...
        click_link "New Lista de actividade"
        #expect the page to show the content specified
        expect(page).to have_content("New Lista De Actividade")

#Going to text when we create a Lista de Actividades

        #When we write a title and...
        fill_in "Title", with: options[:title]
        # when we write the description, and...
        fill_in "Description", with: options[:description]
        #after clicking the button, then it should...
        click_button "Create Lista de actividade"

    end

    #tell what it should do when...
    it "redirects to the lista de actividade index page on success" do

        create_list_de_actividades()

        #expect to have the content type in the title
        expect(page).to have_content("Playing soccer")


    end

#Here I am checking if it displays something when I do not have a content in the title. This should fail, which is good, because I know
#I have to add sometime of validations.

#After adding validation to the title, this test passes.

    it "displays an error when the lista de actividade has no title" do
        expect(ListaDeActividade.count).to eq(0)

        create_list_de_actividades( title: "" )

        #We expect an error if it's black
        expect(page).to have_content("error")
        #should start at 0 in our databasa
        expect(ListaDeActividade.count).to eq(0)

        #we are going back to the main page
        visit "/lista_de_actividades"
        #expext to not have a title content
        expect(page).to_not have_content("I going to play bowling.")
    end

#Testing title to have a specific amount of letters.

#This test fails,

#This test passes after adding validations in the Model

        it "displays an error when the lista de actividade has a title less than 3 characters" do
        expect(ListaDeActividade.count).to eq(0)

        create_list_de_actividades( title: "Hi" )

        #We expect an error if it's black
        expect(page).to have_content("error")
        #should start at 0 in our databasa
        expect(ListaDeActividade.count).to eq(0)

        #we are going back to the main page
        visit "/lista_de_actividades"
        #expext to not have a title content
        expect(page).to_not have_content("I going to play, I am excited.")

    end

#                                                    DESCRIPTION
#Testing description to have an empty string.
#This test passes after adding validations in the Model

        it "displays an error when the lista de actividade has no description" do
        expect(ListaDeActividade.count).to eq(0)

        create_list_de_actividades( title: "Playing soccer", description: "" )

        #We expect an error if it's black
        expect(page).to have_content("error")
        #should start at 0 in our databasa
        expect(ListaDeActividade.count).to eq(0)

        #we are going back to the main page
        visit "/lista_de_actividades"
        #expext to not have a title content
        expect(page).to_not have_content("Play soccer")


    end

        it "displays an error when the lista de actividade has a description less than 5 characters" do
        expect(ListaDeActividade.count).to eq(0)

        create_list_de_actividades( title: "Playing soccer", description: "Stay" )

        #We expect an error if it's black
        expect(page).to have_content("error")
        #should start at 0 in our databasa
        expect(ListaDeActividade.count).to eq(0)

        #we are going back to the main page
        visit "/lista_de_actividades"
        #expext to not have a title content
        expect(page).to_not have_content("Play soccer")
    end

end

