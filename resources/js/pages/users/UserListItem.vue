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



const emit = defineEmits(['userDeleted', 'editUser', 'confirmUserDeletion']);



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
    <!-- <td>{{ formatDate(user.created_at) }}</td> -->
    <td>{{ user.formatted_created_at }}</td>
    <td>
        <select class="form-control" @change="changeRole(user, $event.target.value)">
            <option v-for="role in roles" :key="role.value" :value="role.value" :selected="(user.role === role.name)">{{ role.name }}</option>
        </select>
    </td>
    <td>
      <a href="#" @click.prevent="$emit('editUser', user)"><i class="fa fa-edit"></i></a>
      <a href="#" @click.prevent="emit('confirmUserDeletion', user.id)"
        ><i class="fa fa-trash text-danger ml-2"></i
      ></a>
    </td>
  </tr>



</template>
