import '../model/app_state.dart';
import './user_session_reducer.dart';
import './errmsg_reducer.dart';
import './device_controller_reducer.dart';
import './devices/devices_state_reducer.dart';

// We create the AppState reducer by combining many smaller reducers into one!
AppState appReducer(AppState state, action) {
  return new AppState(
    userSession: userReducer(state.userSession, action),
    errmsg: errmsgReducer(state.errmsg, action),
    devices: devicesReducer(state.devices, action),
    devController: devControllerReducer(state.devController, action)
  );
}
