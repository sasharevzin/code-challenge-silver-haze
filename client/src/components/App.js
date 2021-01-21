import React from "react"
import { QueryClient, QueryClientProvider } from "react-query"

import Header from "./Header/Header"
import Footer from "./Footer/Footer"
import UsersList from "./UsersList/UsersList"
import Store from "./Store/Store"

import "../styles/global.css"

const queryClient = new QueryClient()

const App = () => {
  return (
    <QueryClientProvider client={queryClient}>
      <Header />
      <Store />
      <UsersList />
      <Footer />
    </QueryClientProvider>
  )
}

export default App
