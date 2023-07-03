<script setup>
import {ref} from "vue";
import {formatDate} from "../../helper.js";
import { useToastr } from "../../toastr.js";


const toastr = useToastr();

const props = defineProps({
    user: Object,
    index: Number,
    selectAll: Boolean,
});



const emit = defineEmits(['userDeleted', 'editUser']);

const confirmUserDeletion = (user) => {
  userIdBeignDeleted.value = user.id;
  $("#deleteUserModal").modal("show");
};

const userIdBeignDeleted = ref(null);

const deleteUser = () => {
  axios.delete(`/api/users/${userIdBeignDeleted.value}`)
  .then(() => {

    $("#deleteUserModal").modal("hide");
    // users.value = users.value.filter((user) => user.id !== userIdBeignDeleted.value);
    toastr.success("User Deleted Successfully!");
    emit('userDeleted', userIdBeignDeleted.value);
  });
};

const roles = ref([
    {
        name: 'ADMIN',
        value: 1
    },
    {
        name: 'USER',
        value: 2
    }
]);

const changeRole = (user, role) => {
    axios.patch(`/api/users/${user.id}/change-role`, {
        role: role,
    })
    .then(() => {
        toastr.success("User Role Updated Successfully!");
    });
};
const toggleSelection = () => {
    emit('toggleSelection', props.user);
}
</script>





<template>
  <tr >
    <td><input type="checkbox" :checked="selectAll" @change="toggleSelection"></td>
    <th scope="row">{{ index + 1 }}</th>
    <td>{{ user.name }}</td>
    <td>{{ user.email }}</td>
    <td>{{ formatDate(user.created_at) }}</td>
    <td>
        <select class="form-control" @change="changeRole(user, $event.target.value)">
            <option v-for="role in roles" :key="role.value" :value="role.value" :selected="(user.role === role.name)">{{ role.name }}</option>
        </select>
    </td>
    <td>
      <a href="#" @click.prevent="$emit('editUser', user)"><i class="fa fa-edit"></i></a>
      <a href="#" @click.prevent="confirmUserDeletion(user)"
        ><i class="fa fa-trash text-danger ml-2"></i
      ></a>
    </td>
  </tr>


  <div
    class="modal fade"
    id="deleteUserModal"
    data-backdrop="static"
    tabindex="-1"
    role="dialog"
    aria-labelledby="staticBackdropLabel"
    aria-hidden="true"
  >
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">
            <span>Delete User</span>
          </h5>
          <button
            type="button"
            class="close"
            data-dismiss="modal"
            aria-label="Close"
          >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <div class="modal-body">
            <h5>Are you sure you want to delete this user?</h5>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">
            Cancel
          </button>
          <button @click.prevent="deleteUser" type="button" class="btn btn-primary">Delete User</button>
        </div>
      </div>
    </div>
  </div>
</template>
