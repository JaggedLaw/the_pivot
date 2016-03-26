require "rails_helper"

RSpec.feature "AdminViewsAllOrders", type: :feature do
  scenario "they see all of the orders" do
    coffee = Category.create(name:"coffee")

    project1 = coffee.projects.create(name: "Finca San Matias",
                                      goal: 2500,
                                      description: "Es todo que necessita.",
                                      )
    project2 = coffee.projects.create(name: "Gatchatha AA Kenya",
                                      goal: 2000,
                                      description: "Gatchatha have it.",
                                      )
    project3 = coffee.projects.create(name: "Inter Continental Pack",
                                      goal: 4000,
                                      description: "Study abroad.",
                                      )


    user = User.create(first_name: "john",
                       last_name: "adams",
                       fullname: "john adams",
                       email: "email@foundingfathers.biz",
                       password: "password")

    order1 = user.orders.create(street: "1600 pennslyvania",
                                city: "washington",
                                state: "District of Columbia",
                                zip: "46250",
                                fullname: "jonathon adams",
                                first_name: "jonathon",
                                last_name: "adams",
                                email: "spam@foundingfathers.biz")

    loan1 = order1.loans.create(project_id: project1.id,
                                                  quantity: 10)

    order1.loans.create( project_id: project3.id,
                                  quantity: 11)
    order1.comments.create(comment: "Test comment")

    order2 = user.orders.create(street: "1600 pennslyvania",
                                city: "washington",
                                state: "District of Columbia",
                                zip: "46250",
                                fullname: "jonathon adams",
                                first_name: "jonathon",
                                last_name: "adams",
                                email: "spam@foundingfathers.biz")

    order2.loans.create(project_id: project2.id, quantity: 1)
    order2.loans.create(project_id: project3.id, quantity: 2)

    admin = User.create(first_name: "john",
                        last_name: "admin",
                        fullname: "john admin",
                        email: "admin@example.com",
                        password: "password",
                        role: 1)

    visit "/"
    click_on "login"
    fill_in "email", with: admin.email
    fill_in "password", with: admin.password
    click_on "login"
    visit admin_dashboard_path

    click_on "active orders"

    expect(current_path).to eq(admin_orders_path)

    within "tr##{order1.id}-order" do
      expect(page).to have_content(order1.id)
      expect(page).to have_content(order1.first_name)
      expect(page).to have_content(order1.last_name)
      expect(page).to have_content(order1.total)
      expect(page).to have_content(order1.project_quantity)
      expect(page).to_not have_content(order2.total)
      select "completed", from: "order_status"
      click_on "update"
    end

    expect(current_path).to eq(admin_orders_path)
    expect(Order.first.status).to eq("completed")

    click_on(order1.id)

    expect(current_path).to eq(admin_order_path(order1.id))
    within "div#order-information" do
      expect(page).to have_content(order1.id)
      expect(Order.first.status).to eq("completed")
      expect(page).to have_button("update")
    end

    within "div#order-comments" do
      expect(Order.first.comments.last.comment).to eq("Test comment")
      expect(page).to have_button("add comment")
    end

    within "div#customer-information" do
      expect(page).to have_content(order1.first_name)
      expect(page).to have_content(order1.last_name)
      expect(page).to have_content("1600 pennslyvania")
      expect(page).to have_content(order1.city)
      expect(page).to have_content(order1.state)
      expect(page).to have_content(order1.zip)
    end

    expect(page).to have_content(loan1.project.name)
    expect(page).to have_content(loan1.quantity)
    expect(page).to have_content(loan1.project.display_goal)
    expect(page).to have_content(loan1.display_total)
  end
end
