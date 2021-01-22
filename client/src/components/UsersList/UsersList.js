import React from "react"
import { useQuery } from "react-query"

import User from "../User/User"

const UsersList = () => {
  const api_url =
    process.env.NODE_ENV === "production"
      ? "https://code-challenge-silver-haze.herokuapp.com"
      : "http://localhost:3000"

  const { isLoading, error, data } = useQuery("repoData", () =>
    fetch(`${api_url}/users.json`).then((res) => res.json())
  )

  if (isLoading) return "Loading..."

  if (error) return "An error has occurred: " + error.message

  return (
    <div className="container">
      <h2>Users</h2>
      {data.map((user) => (
        <User user={user} key={user.id} />
      ))}
    </div>
  )
}

export default UsersList
