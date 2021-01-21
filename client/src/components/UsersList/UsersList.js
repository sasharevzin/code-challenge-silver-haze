import React from "react"

import User from "../User/User"

const UsersList = () => {
  const users = [
    { id: 1, name: "Sasha" },
    { id: 2, name: "Lisa" },
  ]

  return (
    <div className="container">
      <h3>Users</h3>
      {users.map((user) => (
        <User user={user} key={user.id} />
      ))}
    </div>
  )
}

export default UsersList
