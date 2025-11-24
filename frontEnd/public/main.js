import { getUsers } from '../crud.js';
import * as mainUtils from '../mainUtils.js';

async function runApp() {
  //CREATE EVENT LISTENERS FOR THE INPUTS
  mainUtils.createEventListeners();
  //GET ALL USERS
  const usersList = await getUsers();
  //ORDER USERS BY ID
  const usersListById = mainUtils.orderFetchUsersById(usersList.payload);
  // CREATE THE TABLE ROWS
  mainUtils.mapUsersList(usersListById);
}

//START THE APP
runApp();
