require 'spec_helper'
#describing what we should do...
describe "Creating lista de actividades" do
    #tell what it should do when...
    it "redirects to the lista de actividade index page on success" do

#Going to check if it display what is been specified when we want to create a new Lista de Actividades

        #visit the index page, and when...
        visit "/lista_de_actividades"
        #clinking the button it should...
        click_link "New Lista de actividade"
        #expect the page to show the content specified
        expect(page).to have_content("New Lista De Actividade")

#Going to text when we create a Lista de Actividades

        #When we write a title and...
        fill_in "Title", with: "Going to the Pool"
        # when we write the description, and...
        fill_in "Description", with: "My friends"
        #after clicking the button, then it should...
        click_button "Create Lista de actividade"
        #expect to have the content type in the title
        expect(page).to have_content("Going to the Pool")

    end

#Here I am checking if it displays something when I do not have a content in the title. This should fail, which is good, because I know
#I have to add sometime of validations.

#After adding validation to the title, this test passes.

    it "displays an error when the lista de actividade has no title" do
        expect(ListaDeActividade.count).to eq(0)

        visit "/lista_de_actividades"
        click_link "New Lista de actividade"
        expect(page).to have_content("New Lista De Actividade")

        #here I set the title as an empty string.
        fill_in "Title", with: ""
        fill_in "Description", with: "My friends"
        click_button "Create Lista de actividade"

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

        visit "/lista_de_actividades"
        click_link "New Lista de actividade"
        expect(page).to have_content("New Lista De Actividade")

        #here I set the title as an empty string.
        fill_in "Title", with: "Hi"
        fill_in "Description", with: "My friends"
        click_button "Create Lista de actividade"

        #We expect an error if it's black
        expect(page).to have_content("error")
        #should start at 0 in our databasa
        expect(ListaDeActividade.count).to eq(0)

        #we are going back to the main page
        visit "/lista_de_actividades"
        #expext to not have a title content
        expect(page).to_not have_content("I going to play bowling.")

    end

end

