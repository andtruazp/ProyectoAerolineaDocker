import {createPool} from 'mysql2/promise'

export const pool = createPool({
    host: 'db',
    user: 'admin',
    password: 'admin',
    port: 3306,
    database: 'proyecto'
})