export enum TodoStatus {
  Backlog = 0,
  Inprogress = 1,
  Done = 2,
};

export type TodoData = {
  id: number;
  status: TodoStatus;
  title: string;
  description: string;
};
