import TodoForm from "@/app/_components/TodoForm";
import { TodoData, TodoStatus } from "@/app/_types/TodoTypes";
import { Pool } from "pg";

async function LoadTodoItemsFromDB() {

  const pool = new Pool({
    user: 'postgres',
    password: 'postgres',
    host: 'db',
    port: 5432,
    database: 'todolist',
  });

  const client = await pool.connect();
  const ret = await client.query('select * from todo_items', []);
  await client.release(true);
  return ret.rows;

}

export default async function Home() {

  const dbData = await LoadTodoItemsFromDB();
  const data: TodoData[] = dbData.map((todoItem) => {
    return {
      id: todoItem.todo_id,
      status: todoItem.state,
      title: todoItem.title,
      description: todoItem.description,
    }
  });

  return (
    <>
      <h1 className="text-4xl font-bold text-left">
        <span style={{ color: "blue" }}>To</span>
        <span style={{ color: "red" }}>Do</span>
        <span style={{ color: "green" }}>リスト</span>
      </h1>
      <TodoForm children={data} />
    </>
  );
}
