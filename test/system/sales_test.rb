require "application_system_test_case"

class SalesTest < ApplicationSystemTestCase
  setup do
    @sale = sales(:one)
  end

  test "visiting the index" do
    visit sales_url
    assert_selector "h1", text: "Sales"
  end

  test "creating a Sale" do
    visit sales_url
    click_on "New Sale"

    fill_in "Account", with: @sale.account_id
    fill_in "Fecha", with: @sale.fecha
    fill_in "Ganancia", with: @sale.ganancia
    fill_in "Monto cliente", with: @sale.monto_cliente
    check "Pagado" if @sale.pagado
    fill_in "Precio venta", with: @sale.precio_venta
    check "Vendido" if @sale.vendido
    click_on "Create Sale"

    assert_text "Sale was successfully created"
    click_on "Back"
  end

  test "updating a Sale" do
    visit sales_url
    click_on "Edit", match: :first

    fill_in "Account", with: @sale.account_id
    fill_in "Fecha", with: @sale.fecha
    fill_in "Ganancia", with: @sale.ganancia
    fill_in "Monto cliente", with: @sale.monto_cliente
    check "Pagado" if @sale.pagado
    fill_in "Precio venta", with: @sale.precio_venta
    check "Vendido" if @sale.vendido
    click_on "Update Sale"

    assert_text "Sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Sale" do
    visit sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sale was successfully destroyed"
  end
end
