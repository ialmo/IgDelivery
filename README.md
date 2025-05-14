# IgDelivery

App de delivery criado com SwiftUI como parte dos estudos na plataforma Alura.

Desenvolvido por Ialmo Gontijo em 13/05/2025.

---

## Sobre o Projeto

O **IgDelivery** é um app de vitrine de pedidos, inspirado em plataformas de delivery, utilizando layout responsivo, navegação, carrossel de banners e grid de categorias. Criado com **SwiftUI** e totalmente modularizado em componentes reaproveitáveis.

---

## Funcionalidades

- Exibição de categorias de pedidos em grade (grid)
- Carrossel de banners promocionais
- Listagem de lojas/restaurantes
- Navegação e barra superior personalizável
- Estrutura baseada em `View`, `Model` e `Mock Data`

---

## Estrutura de Código

### App principal
- `IgDeliveryApp.swift`: Arquivo principal que inicia o app com `ContentView`.

### View Principal
- `ContentView.swift`: Composição principal da tela com `NavigationBar`, `OrderTypeGridView`, `CarouselTabView` e `StoresContainerView`.

### Componentes visuais
- `NavigationBar.swift`: Barra superior com endereço e ícone de notificação
- `OrderTypeGridView.swift` + `OrderTypeView.swift`: Grid horizontal com tipos de pedido
- `CarouselTabView.swift` + `CarouselItemView.swift`: Carrossel de banners de categorias
- `StoresContainerView.swift` + `StoreItemView.swift`: Lista de lojas com nome e imagem

### Modelo de dados
- `OrderType.swift`: Modelo base para tipos de pedido
- `DataSourceMock.swift`: Dados mockados para categorias e lojas

---

## Previews

Todas as `Views` contam com previews para facilitar o desenvolvimento e testes de UI no Xcode.

---

## Tecnologias

- Swift 5
- SwiftUI
- Xcode 15 ou superior
- Estrutura modular
- Uso de `.resizable()`, `.scaledToFit()`, `LazyHGrid`, `TabView`, e `onTapGesture`

---

## Autor

Desenvolvido por Ialmo Gontijo  
Criado em Maio de 2025

---

## Screenshots (sugestão)

Você pode adicionar imagens aqui com:

