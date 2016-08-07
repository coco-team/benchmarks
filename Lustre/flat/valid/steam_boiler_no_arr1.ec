node top
  (stop: bool;
  steam_boiler_waiting: bool;
  physical_units_ready: bool;
  level: int;
  steam: int;
  pump_state_0: int;
  pump_state_1: int;
  pump_state_2: int;
  pump_state_3: int;
  pump_control_state_0: bool;
  pump_control_state_1: bool;
  pump_control_state_2: bool;
  pump_control_state_3: bool;
  pump_repaired_0: bool;
  pump_repaired_1: bool;
  pump_repaired_2: bool;
  pump_repaired_3: bool;
  pump_control_repaired_0: bool;
  pump_control_repaired_1: bool;
  pump_control_repaired_2: bool;
  pump_control_repaired_3: bool;
  level_repaired: bool;
  steam_repaired: bool;
  pump_failure_acknowledgement_0: bool;
  pump_failure_acknowledgement_1: bool;
  pump_failure_acknowledgement_2: bool;
  pump_failure_acknowledgement_3: bool;
  pump_control_failure_acknowledgement_0: bool;
  pump_control_failure_acknowledgement_1: bool;
  pump_control_failure_acknowledgement_2: bool;
  pump_control_failure_acknowledgement_3: bool;
  level_failure_acknowledgement: bool;
  steam_failure_acknowledgement: bool)
returns
  (OK: bool);

var
  V476_program_ready: bool;
  V477_mode_ok: bool;
  V478_mode_normal_then_no_failure: bool;
  V479_mode_normal_then_valve_off: bool;
  V480_mode: int;
  V481_valve: bool;
  V482_open_pump_0: bool;
  V483_open_pump_1: bool;
  V484_open_pump_2: bool;
  V485_open_pump_3: bool;
  V486_close_pump_0: bool;
  V487_close_pump_1: bool;
  V488_close_pump_2: bool;
  V489_close_pump_3: bool;
  V490_pump_failure_detection_0: bool;
  V491_pump_failure_detection_1: bool;
  V492_pump_failure_detection_2: bool;
  V493_pump_failure_detection_3: bool;
  V494_pump_control_failure_detection_0: bool;
  V495_pump_control_failure_detection_1: bool;
  V496_pump_control_failure_detection_2: bool;
  V497_pump_control_failure_detection_3: bool;
  V498_level_failure_detection: bool;
  V499_steam_outcome_failure_detection: bool;
  V500_pump_repaired_acknowledgement_0: bool;
  V501_pump_repaired_acknowledgement_1: bool;
  V502_pump_repaired_acknowledgement_2: bool;
  V503_pump_repaired_acknowledgement_3: bool;
  V504_pump_control_repaired_acknowledgement_0: bool;
  V505_pump_control_repaired_acknowledgement_1: bool;
  V506_pump_control_repaired_acknowledgement_2: bool;
  V507_pump_control_repaired_acknowledgement_3: bool;
  V508_level_repaired_acknowledgement: bool;
  V509_steam_outcome_repaired_acknowledgement: bool;
  V1713_stop_request: bool;
  V1714_q: int;
  V1715_v: int;
  V1716_p_0: int;
  V1717_p_1: int;
  V1718_p_2: int;
  V1719_p_3: int;
  V1720_valve_state: int;
  V1721_n_pumps: int;
  V1722_pump_status_0: int;
  V1723_pump_status_1: int;
  V1724_pump_status_2: int;
  V1725_pump_status_3: int;
  V1726_level_defect: int;
  V1727_steam_defect: int;
  V1728_pump_defect_0: int;
  V1729_pump_defect_1: int;
  V1730_pump_defect_2: int;
  V1731_pump_defect_3: int;
  V1732_pump_control_defect_0: int;
  V1733_pump_control_defect_1: int;
  V1734_pump_control_defect_2: int;
  V1735_pump_control_defect_3: int;
  V1736_flow_0: bool;
  V1737_flow_1: bool;
  V1738_flow_2: bool;
  V1739_flow_3: bool;
  V1740_t00: int;
  V1741_t01: int;
  V1742_t10: int;
  V1743_t20: int;
  V1744_t30: int;
  V1745_t11: int;
  V1746_t21: int;
  V1747_t31: int;
  V1748_t02: bool;
  V1749_t12: bool;
  V1750_t22: bool;
  V1751_t32: bool;
  V1752_u4: bool;
  V1753_u6: bool;
  V1754_t4: int;
  V1755_t5: int;
  V1756_t6: int;
  V1757_t7: int;
  V1758_t8: int;
  V1759_t9: int;
  V1760_u0: int;
  V1761_u1: int;
  V1762_u2: int;
  V1763_u3: int;
  V1764_u5: int;
  V1765_u7: int;
  V1766_b0: bool;
  V1767_b1: bool;
  V1768_b2: bool;
  V1769_b3: bool;
  V1770_nb_stops: int;
  V1771_statein: int;
  V1772_LevelDefect: int;
  V1773_statein: int;
  V1774_SteamDefect: int;
  V1775_pump_failure_d: bool;
  V1776_pump_control_failure_d: bool;
  V1777_statein: int;
  V1778_statein: int;
  V1779_pump_status: int;
  V1780_pump_failure_d: bool;
  V1781_pump_control_failure_d: bool;
  V1782_statein: int;
  V1783_statein: int;
  V1784_pump_status: int;
  V1785_pump_failure_d: bool;
  V1786_pump_control_failure_d: bool;
  V1787_statein: int;
  V1788_statein: int;
  V1789_pump_status: int;
  V1790_pump_failure_d: bool;
  V1791_pump_control_failure_d: bool;
  V1792_statein: int;
  V1793_statein: int;
  V1794_pump_status: int;
  V1795_n_pumps: int;
  V1796_n_pumps_flow: int;
  V1797_n_pumps_to_open: int;
  V1798_t0: int;
  V1799_t1: int;
  V1800_t2: int;
  V1801_t3: int;
  V1802_pump_status_0: int;
  V1803_pump_status_1: int;
  V1804_pump_status_2: int;
  V1805_pump_status_3: int;
  V1806_op_mode: int;
  V1807_op_mode: int;

let
  OK = ((V477_mode_ok and V478_mode_normal_then_no_failure) and 
  V479_mode_normal_then_valve_off);
  V476_program_ready = (false -> V1753_u6);
  V477_mode_ok = ((((((V480_mode = 1) or (V480_mode = 2)) or (V480_mode = 3)) 
  or (V480_mode = 4)) or (V480_mode = 5)) or (V480_mode = 6));
  V478_mode_normal_then_no_failure = ((V480_mode = 3) => ((((not 
  V498_level_failure_detection) and (not V499_steam_outcome_failure_detection)) 
  and ((((not V490_pump_failure_detection_0) and (not 
  V491_pump_failure_detection_1)) and (not V492_pump_failure_detection_2)) and 
  (not V493_pump_failure_detection_3))) and ((((not 
  V494_pump_control_failure_detection_0) and (not 
  V495_pump_control_failure_detection_1)) and (not 
  V496_pump_control_failure_detection_2)) and (not 
  V497_pump_control_failure_detection_3))));
  V479_mode_normal_then_valve_off = ((V480_mode = 3) => (not V481_valve));
  V480_mode = (1 -> V1765_u7);
  V481_valve = (false -> V1752_u4);
  V482_open_pump_0 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1722_pump_status_0 = 2));
  V483_open_pump_1 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1723_pump_status_1 = 2));
  V484_open_pump_2 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1724_pump_status_2 = 2));
  V485_open_pump_3 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1725_pump_status_3 = 2));
  V486_close_pump_0 = ((((((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1722_pump_status_0 = 0)) and ((pre V1722_pump_status_0) <> 0)) and (
  V1728_pump_defect_0 = 0)) and ((pre V1728_pump_defect_0) = 0));
  V487_close_pump_1 = ((((((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1722_pump_status_0 = 0)) and ((pre V1723_pump_status_1) <> 0)) and (
  V1728_pump_defect_0 = 0)) and ((pre V1729_pump_defect_1) = 0));
  V488_close_pump_2 = ((((((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1722_pump_status_0 = 0)) and ((pre V1724_pump_status_2) <> 0)) and (
  V1728_pump_defect_0 = 0)) and ((pre V1730_pump_defect_2) = 0));
  V489_close_pump_3 = ((((((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1722_pump_status_0 = 0)) and ((pre V1725_pump_status_3) <> 0)) and (
  V1728_pump_defect_0 = 0)) and ((pre V1731_pump_defect_3) = 0));
  V490_pump_failure_detection_0 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1728_pump_defect_0 = 1));
  V491_pump_failure_detection_1 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1729_pump_defect_1 = 1));
  V492_pump_failure_detection_2 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1730_pump_defect_2 = 1));
  V493_pump_failure_detection_3 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) and (
  V1731_pump_defect_3 = 1));
  V494_pump_control_failure_detection_0 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)
  ) and (V1732_pump_control_defect_0 = 1));
  V495_pump_control_failure_detection_1 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)
  ) and (V1733_pump_control_defect_1 = 1));
  V496_pump_control_failure_detection_2 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)
  ) and (V1734_pump_control_defect_2 = 1));
  V497_pump_control_failure_detection_3 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)
  ) and (V1735_pump_control_defect_3 = 1));
  V498_level_failure_detection = (false -> V1766_b0);
  V499_steam_outcome_failure_detection = (false -> V1768_b2);
  V500_pump_repaired_acknowledgement_0 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) 
  and pump_repaired_0);
  V501_pump_repaired_acknowledgement_1 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) 
  and pump_repaired_1);
  V502_pump_repaired_acknowledgement_2 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) 
  and pump_repaired_2);
  V503_pump_repaired_acknowledgement_3 = (((V1765_u7 <> 6) and (V1765_u7 <> 1)) 
  and pump_repaired_3);
  V504_pump_control_repaired_acknowledgement_0 = (((V1765_u7 <> 6) and (
  V1765_u7 <> 1)) and pump_control_repaired_0);
  V505_pump_control_repaired_acknowledgement_1 = (((V1765_u7 <> 6) and (
  V1765_u7 <> 1)) and pump_control_repaired_1);
  V506_pump_control_repaired_acknowledgement_2 = (((V1765_u7 <> 6) and (
  V1765_u7 <> 1)) and pump_control_repaired_2);
  V507_pump_control_repaired_acknowledgement_3 = (((V1765_u7 <> 6) and (
  V1765_u7 <> 1)) and pump_control_repaired_3);
  V508_level_repaired_acknowledgement = (false -> V1767_b1);
  V509_steam_outcome_repaired_acknowledgement = (false -> V1769_b3);
  V1713_stop_request = (V1770_nb_stops >= 3);
  V1714_q = (level -> V1754_t4);
  V1715_v = (steam -> V1755_t5);
  V1716_p_0 = (0 -> V1756_t6);
  V1717_p_1 = (0 -> V1757_t7);
  V1718_p_2 = (0 -> V1758_t8);
  V1719_p_3 = (0 -> V1759_t9);
  V1720_valve_state = (0 -> V1764_u5);
  V1721_n_pumps = (0 -> V1795_n_pumps);
  V1722_pump_status_0 = (0 -> V1760_u0);
  V1723_pump_status_1 = (0 -> V1761_u1);
  V1724_pump_status_2 = (0 -> V1762_u2);
  V1725_pump_status_3 = (0 -> V1763_u3);
  V1726_level_defect = (0 -> V1772_LevelDefect);
  V1727_steam_defect = (0 -> V1774_SteamDefect);
  V1728_pump_defect_0 = (0 -> V1740_t00);
  V1729_pump_defect_1 = (0 -> V1742_t10);
  V1730_pump_defect_2 = (0 -> V1743_t20);
  V1731_pump_defect_3 = (0 -> V1744_t30);
  V1732_pump_control_defect_0 = (0 -> V1741_t01);
  V1733_pump_control_defect_1 = (0 -> V1745_t11);
  V1734_pump_control_defect_2 = (0 -> V1746_t21);
  V1735_pump_control_defect_3 = (0 -> V1747_t31);
  V1736_flow_0 = (false -> V1748_t02);
  V1737_flow_1 = (false -> V1749_t12);
  V1738_flow_2 = (false -> V1750_t22);
  V1739_flow_3 = (false -> V1751_t32);
  V1740_t00 = (0 -> (if (V1777_statein = 0) then (if V1775_pump_failure_d then 
  1 else 0) else (if (V1777_statein = 1) then (if 
  pump_failure_acknowledgement_0 then 2 else 1) else (if pump_repaired_0 then 0 
  else 2))));
  V1741_t01 = (0 -> (if (V1778_statein = 0) then (if 
  V1776_pump_control_failure_d then 1 else 0) else (if (V1778_statein = 1) then 
  (if pump_control_failure_acknowledgement_0 then 2 else 1) else (if 
  pump_control_repaired_0 then 0 else 2))));
  V1742_t10 = (0 -> (if (V1782_statein = 0) then (if V1780_pump_failure_d then 
  1 else 0) else (if (V1782_statein = 1) then (if 
  pump_failure_acknowledgement_1 then 2 else 1) else (if pump_repaired_1 then 0 
  else 2))));
  V1743_t20 = (0 -> (if (V1787_statein = 0) then (if V1785_pump_failure_d then 
  1 else 0) else (if (V1787_statein = 1) then (if 
  pump_failure_acknowledgement_2 then 2 else 1) else (if pump_repaired_2 then 0 
  else 2))));
  V1744_t30 = (0 -> (if (V1792_statein = 0) then (if V1790_pump_failure_d then 
  1 else 0) else (if (V1792_statein = 1) then (if 
  pump_failure_acknowledgement_3 then 2 else 1) else (if pump_repaired_3 then 0 
  else 2))));
  V1745_t11 = (0 -> (if (V1783_statein = 0) then (if 
  V1781_pump_control_failure_d then 1 else 0) else (if (V1783_statein = 1) then 
  (if pump_control_failure_acknowledgement_1 then 2 else 1) else (if 
  pump_control_repaired_1 then 0 else 2))));
  V1746_t21 = (0 -> (if (V1788_statein = 0) then (if 
  V1786_pump_control_failure_d then 1 else 0) else (if (V1788_statein = 1) then 
  (if pump_control_failure_acknowledgement_2 then 2 else 1) else (if 
  pump_control_repaired_2 then 0 else 2))));
  V1747_t31 = (0 -> (if (V1793_statein = 0) then (if 
  V1791_pump_control_failure_d then 1 else 0) else (if (V1793_statein = 1) then 
  (if pump_control_failure_acknowledgement_3 then 2 else 1) else (if 
  pump_control_repaired_3 then 0 else 2))));
  V1748_t02 = (((((V1779_pump_status = 0) and (pump_state_0 = 1)) and 
  pump_control_state_0) or (((V1779_pump_status = 1) and (pump_state_0 = 0)) 
  and pump_control_state_0)) or ((V1779_pump_status = 1) and (pump_state_0 = 1)
  ));
  V1749_t12 = (((((V1784_pump_status = 0) and (pump_state_1 = 1)) and 
  pump_control_state_1) or (((V1784_pump_status = 1) and (pump_state_1 = 0)) 
  and pump_control_state_1)) or ((V1784_pump_status = 1) and (pump_state_1 = 1)
  ));
  V1750_t22 = (((((V1789_pump_status = 0) and (pump_state_2 = 1)) and 
  pump_control_state_2) or (((V1789_pump_status = 1) and (pump_state_2 = 0)) 
  and pump_control_state_2)) or ((V1789_pump_status = 1) and (pump_state_2 = 1)
  ));
  V1751_t32 = (((((V1794_pump_status = 0) and (pump_state_3 = 1)) and 
  pump_control_state_3) or (((V1794_pump_status = 1) and (pump_state_3 = 0)) 
  and pump_control_state_3)) or ((V1794_pump_status = 1) and (pump_state_3 = 1)
  ));
  V1752_u4 = (false -> (V1764_u5 <> (pre V1764_u5)));
  V1753_u6 = (((V1765_u7 = 2) and ((400 <= level) and (level <= 600))) and (not 
  V481_valve));
  V1754_t4 = (level -> (if (V1726_level_defect <> 0) then ((((pre V1754_t4) - (
  steam * 5)) + ((((V1756_t6 + V1757_t7) + V1758_t8) + V1759_t9) * 5)) - (if (
  (pre V1720_valve_state) = 1) then 50 else 0)) else level));
  V1755_t5 = (steam -> (if (V1727_steam_defect <> 0) then ((((pre V1754_t4) - 
  V1754_t4) div 5) + ((((V1756_t6 + V1757_t7) + V1758_t8) + V1759_t9) * 5)) 
  else steam));
  V1756_t6 = (0 -> (if (not V1736_flow_0) then 0 else 15));
  V1757_t7 = (0 -> (if (not V1737_flow_1) then 0 else 15));
  V1758_t8 = (0 -> (if (not V1738_flow_2) then 0 else 15));
  V1759_t9 = (0 -> (if (not V1739_flow_3) then 0 else 15));
  V1760_u0 = (0 -> V1798_t0);
  V1761_u1 = (0 -> V1799_t1);
  V1762_u2 = (0 -> V1800_t2);
  V1763_u3 = (0 -> V1801_t3);
  V1764_u5 = (0 -> (if (V1765_u7 = 2) then (if (V1714_q > 600) then 1 else (if 
  (V1714_q <= 600) then 0 else (pre V1764_u5))) else (pre V1764_u5)));
  V1765_u7 = (1 -> V1807_op_mode);
  V1766_b0 = ((not ((V1765_u7 = 6) or (V1765_u7 = 1))) and (V1726_level_defect 
  = 1));
  V1767_b1 = ((not ((V1765_u7 = 6) or (V1765_u7 = 1))) and level_repaired);
  V1768_b2 = ((not ((V1765_u7 = 6) or (V1765_u7 = 1))) and (V1727_steam_defect 
  = 1));
  V1769_b3 = ((not ((V1765_u7 = 6) or (V1765_u7 = 1))) and steam_repaired);
  V1770_nb_stops = ((if stop then 1 else 0) -> (if stop then ((pre 
  V1770_nb_stops) + 1) else 0));
  V1771_statein = (pre V1772_LevelDefect);
  V1772_LevelDefect = (0 -> (if (V1771_statein = 0) then (if ((level < 0) or (
  level > 1000)) then 1 else 0) else (if (V1771_statein = 1) then (if 
  level_failure_acknowledgement then 2 else 1) else (if level_repaired then 0 
  else 2))));
  V1773_statein = (pre V1774_SteamDefect);
  V1774_SteamDefect = (0 -> (if (V1773_statein = 0) then (if ((steam < 0) or (
  steam > 25)) then 1 else 0) else (if (V1773_statein = 1) then (if 
  steam_failure_acknowledgement then 2 else 1) else (if steam_repaired then 0 
  else 2))));
  V1775_pump_failure_d = (((V1779_pump_status = 0) and (pump_state_0 = 1)) or (
  ((V1779_pump_status = 1) or (V1779_pump_status = 2)) and (pump_state_0 = 0)))
  ;
  V1776_pump_control_failure_d = ((((((V1779_pump_status = 0) or (
  V1779_pump_status = 2)) and (pump_state_0 = 0)) and pump_control_state_0) or 
  (((V1779_pump_status = 1) and (pump_state_0 = 1)) and (not 
  pump_control_state_0))) or (((V1779_pump_status = 2) and (pump_state_0 = 1)) 
  and pump_control_state_0));
  V1777_statein = (pre V1740_t00);
  V1778_statein = (pre V1741_t01);
  V1779_pump_status = (pre V1722_pump_status_0);
  V1780_pump_failure_d = (((V1784_pump_status = 0) and (pump_state_1 = 1)) or (
  ((V1784_pump_status = 1) or (V1784_pump_status = 2)) and (pump_state_1 = 0)))
  ;
  V1781_pump_control_failure_d = ((((((V1784_pump_status = 0) or (
  V1784_pump_status = 2)) and (pump_state_1 = 0)) and pump_control_state_1) or 
  (((V1784_pump_status = 1) and (pump_state_1 = 1)) and (not 
  pump_control_state_1))) or (((V1784_pump_status = 2) and (pump_state_1 = 1)) 
  and pump_control_state_1));
  V1782_statein = (pre V1742_t10);
  V1783_statein = (pre V1745_t11);
  V1784_pump_status = (pre V1723_pump_status_1);
  V1785_pump_failure_d = (((V1789_pump_status = 0) and (pump_state_2 = 1)) or (
  ((V1789_pump_status = 1) or (V1789_pump_status = 2)) and (pump_state_2 = 0)))
  ;
  V1786_pump_control_failure_d = ((((((V1789_pump_status = 0) or (
  V1789_pump_status = 2)) and (pump_state_2 = 0)) and pump_control_state_2) or 
  (((V1789_pump_status = 1) and (pump_state_2 = 1)) and (not 
  pump_control_state_2))) or (((V1789_pump_status = 2) and (pump_state_2 = 1)) 
  and pump_control_state_2));
  V1787_statein = (pre V1743_t20);
  V1788_statein = (pre V1746_t21);
  V1789_pump_status = (pre V1724_pump_status_2);
  V1790_pump_failure_d = (((V1794_pump_status = 0) and (pump_state_3 = 1)) or (
  ((V1794_pump_status = 1) or (V1794_pump_status = 2)) and (pump_state_3 = 0)))
  ;
  V1791_pump_control_failure_d = ((((((V1794_pump_status = 0) or (
  V1794_pump_status = 2)) and (pump_state_3 = 0)) and pump_control_state_3) or 
  (((V1794_pump_status = 1) and (pump_state_3 = 1)) and (not 
  pump_control_state_3))) or (((V1794_pump_status = 2) and (pump_state_3 = 1)) 
  and pump_control_state_3));
  V1792_statein = (pre V1744_t30);
  V1793_statein = (pre V1747_t31);
  V1794_pump_status = (pre V1725_pump_status_3);
  V1795_n_pumps = (if (V1714_q > 600) then (V1715_v div 15) else (if (V1714_q < 
  400) then ((V1715_v div 15) + 1) else (pre V1795_n_pumps)));
  V1796_n_pumps_flow = ((((if V1736_flow_0 then 1 else 0) + (if V1737_flow_1 
  then 1 else 0)) + (if V1738_flow_2 then 1 else 0)) + (if V1739_flow_3 then 1 
  else 0));
  V1797_n_pumps_to_open = (V1721_n_pumps - V1796_n_pumps_flow);
  V1798_t0 = (if ((((V1797_n_pumps_to_open > 0) and (not V1736_flow_0)) and 
  (not (V1728_pump_defect_0 <> 0))) and (V1802_pump_status_0 = 0)) then 2 else 
  (if ((((V1797_n_pumps_to_open < 0) and V1736_flow_0) and (not (
  V1728_pump_defect_0 <> 0))) and (V1802_pump_status_0 = 1)) then 0 else (if (
  V1802_pump_status_0 = 2) then 1 else (if (((pre V1728_pump_defect_0) = 2) and 
  (V1728_pump_defect_0 = 0)) then (if (V1802_pump_status_0 = 1) then 0 else 1) 
  else V1802_pump_status_0))));
  V1799_t1 = (if ((((V1797_n_pumps_to_open > 0) and (not V1737_flow_1)) and 
  (not (V1729_pump_defect_1 <> 0))) and (V1803_pump_status_1 = 0)) then 2 else 
  (if ((((V1797_n_pumps_to_open < 0) and V1737_flow_1) and (not (
  V1729_pump_defect_1 <> 0))) and (V1803_pump_status_1 = 1)) then 0 else (if (
  V1803_pump_status_1 = 2) then 1 else (if (((pre V1729_pump_defect_1) = 2) and 
  (V1729_pump_defect_1 = 0)) then (if (V1803_pump_status_1 = 1) then 0 else 1) 
  else V1803_pump_status_1))));
  V1800_t2 = (if ((((V1797_n_pumps_to_open > 0) and (not V1738_flow_2)) and 
  (not (V1730_pump_defect_2 <> 0))) and (V1804_pump_status_2 = 0)) then 2 else 
  (if ((((V1797_n_pumps_to_open < 0) and V1738_flow_2) and (not (
  V1730_pump_defect_2 <> 0))) and (V1804_pump_status_2 = 1)) then 0 else (if (
  V1804_pump_status_2 = 2) then 1 else (if (((pre V1730_pump_defect_2) = 2) and 
  (V1730_pump_defect_2 = 0)) then (if (V1804_pump_status_2 = 1) then 0 else 1) 
  else V1804_pump_status_2))));
  V1801_t3 = (if ((((V1797_n_pumps_to_open > 0) and (not V1739_flow_3)) and 
  (not (V1731_pump_defect_3 <> 0))) and (V1805_pump_status_3 = 0)) then 2 else 
  (if ((((V1797_n_pumps_to_open < 0) and V1739_flow_3) and (not (
  V1731_pump_defect_3 <> 0))) and (V1805_pump_status_3 = 1)) then 0 else (if (
  V1805_pump_status_3 = 2) then 1 else (if (((pre V1731_pump_defect_3) = 2) and 
  (V1731_pump_defect_3 = 0)) then (if (V1805_pump_status_3 = 1) then 0 else 1) 
  else V1805_pump_status_3))));
  V1802_pump_status_0 = (pre V1760_u0);
  V1803_pump_status_1 = (pre V1761_u1);
  V1804_pump_status_2 = (pre V1762_u2);
  V1805_pump_status_3 = (pre V1763_u3);
  V1806_op_mode = (pre V1807_op_mode);
  V1807_op_mode = (1 -> (if (((((((((((pump_state_0 = 3) or (pump_state_1 = 3)) 
  or (pump_state_2 = 3)) or (pump_state_3 = 3)) or ((V1806_op_mode = 1) and (
  steam <> 0))) or ((V1806_op_mode = 2) and ((V1726_level_defect <> 0) or (
  V1727_steam_defect <> 0)))) or ((V1806_op_mode = 3) and ((V1714_q <= 150) or 
  (V1714_q >= 850)))) or ((V1806_op_mode = 4) and ((V1714_q <= 150) or (V1714_q 
  >= 850)))) or ((V1806_op_mode = 5) and ((((V1714_q <= 150) or (V1714_q >= 850
  )) or (V1727_steam_defect <> 0)) or ((((V1728_pump_defect_0 <> 0) and (
  V1729_pump_defect_1 <> 0)) and (V1730_pump_defect_2 <> 0)) and (
  V1731_pump_defect_3 <> 0))))) or V1713_stop_request) or ((pre V1807_op_mode) 
  = 6)) then 6 else (if ((pre V1807_op_mode) = 1) then (if steam_boiler_waiting 
  then 2 else 1) else (if (((pre V1807_op_mode) = 2) and (not 
  physical_units_ready)) then 2 else (if (V1726_level_defect <> 0) then 5 else 
  (if ((((V1726_level_defect <> 0) or (V1727_steam_defect <> 0)) or ((((
  V1728_pump_defect_0 <> 0) or (V1729_pump_defect_1 <> 0)) or (
  V1730_pump_defect_2 <> 0)) or (V1731_pump_defect_3 <> 0))) or ((((
  V1732_pump_control_defect_0 <> 0) or (V1733_pump_control_defect_1 <> 0)) or (
  V1734_pump_control_defect_2 <> 0)) or (V1735_pump_control_defect_3 <> 0))) 
  then 4 else 3))))));
  --%PROPERTY OK=true;


tel.

