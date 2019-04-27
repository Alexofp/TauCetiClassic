/datum/catastrophe_event/anomaly_alert
	name = "Anomaly alert"

	one_time_event = TRUE

	weight = 100

	event_type = "harmful"
	steps = 4

	var/anomaly_timer = 20
	var/active_timer = 0
	var/timer_speed = 0.5

	manual_stop = TRUE

	var/list/anomaly_list = list(/datum/event/anomaly/anomaly_bluespace = 4, /datum/event/anomaly/anomaly_flux = 4, /datum/event/anomaly/anomaly_pyro = 2, /datum/event/anomaly/anomaly_vortex = 1)

/datum/catastrophe_event/anomaly_alert/on_step()
	switch(step)
		if(1)
			announce("������ ����, �����, ������� ������������ ������ �����������[JA_PLACEHOLDER] �������� �����������. ���� ������� ������������ ��������� �������������� ��������� ������ ������ ��� ����. ���� ��� �� � ��� ����������[JA_PLACEHOLDER], ���������� �� ������� �������� �����, �� ���������� ���������� [JA_PLACEHOLDER]������ � ����� ������� ����� ����������[JA_PLACEHOLDER]. ��������, ��� ����� ������ ������� ����������� ������ ������� ��[JA_PLACEHOLDER] �������������� �����������[JA_PLACEHOLDER] �� ���[JA_PLACEHOLDER]�����[JA_PLACEHOLDER] ���������� ����������.")
		if(2)
			announce("���, � ���[JA_PLACEHOLDER] �����[JA_PLACEHOLDER] ������� ��[JA_PLACEHOLDER] ���. ���������� ���� �� ������ ��������� � �� ����� �������� �������[JA_PLACEHOLDER] ����� ���������� ���������[JA_PLACEHOLDER]. �� ������� ����� �� ������, ���������� ���-�� ����� ������. � ���� ���������� ���������� ��� ���������� � �����[JA_PLACEHOLDER]��� ����������� ���[JA_PLACEHOLDER] ������ ��� ���� �� ��� �������� �������� ���[JA_PLACEHOLDER]��[JA_PLACEHOLDER]���[JA_PLACEHOLDER] � �����, �� ��. ������ ���������, �� ���� ������� �������[JA_PLACEHOLDER] ������ ���������� ���, �������, ��� ��� �� ������ ����� ����������� ����� � ���[JA_PLACEHOLDER]� �� ������ ����� � ������� �����������[JA_PLACEHOLDER]")
			timer_speed = 1
		if(3)
			announce("��������, �� ����������� �������� ���� ������ ��� ���� �������� ������������[JA_PLACEHOLDER]. ��������� ������� � ������ ���������� ������. ���������� � ��������� ���������� ���������.")
			addtimer(CALLBACK(src, .proc/spawn_portalstorm), 10*5)
			timer_speed = 2
		if(4)
			announce("�������, �� ��� ������, �����?! ��� ���� ������ ��� ������������ � �������� ������ ����. �������, ��� ���[JA_PLACEHOLDER]������ ���� �������. �� ���[JA_PLACEHOLDER]��[JA_PLACEHOLDER] �� �����, ����� ����������� ������ �� ��� �����[JA_PLACEHOLDER] ���� � ��� ��� ���. ��..�����, ��[JA_PLACEHOLDER]�� ������ ��� ��� ���%%##//")
			anomaly_timer = 10
			timer_speed = 3
			parallax_layer_global_override(PARALLAX_THEME_BLACKHOLE)

/datum/catastrophe_event/anomaly_alert/process_event()
	..()

	anomaly_timer -= timer_speed
	if(anomaly_timer <= 0)
		anomaly_timer = 300
		active_timer = rand(11,29) // 1-2 anomaly per 10 minutes


	if(active_timer > 0)
		if(active_timer % 10 == 0)
			var/anomaly_type = pickweight(anomaly_list)
			if(anomaly_type)
				new anomaly_type()
		active_timer -= 1

/datum/catastrophe_event/anomaly_alert/proc/spawn_portalstorm()
	wormhole_event()