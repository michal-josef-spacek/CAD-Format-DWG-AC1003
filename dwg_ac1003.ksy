meta:
  id: dwg_ac1003
  title: AutoCAD drawing (AC1003)
  application: AutoCAD
  file-extension:
    - dwg
  license: CC0-1.0
  xref:
    justsolve: DWG
    pronom:
      fmt: 29
    mime:
      - application/x-dwg
      - image/vnd.dwg
    wikidata: Q27863121
  endian: le
seq:
  - id: header
    type: header
  - id: entities
    type: entity
    repeat: expr
    repeat-expr: header.number_of_entities
types:
  header:
    seq:
      - id: magic
        contents: [0x41, 0x43, 0x31, 0x30, 0x30, 0x33]
        doc: 0x0000-0x0005, $ACADVER
      - id: zeros
        size: 6
      - id: zero_one_or_three
        type: s1
      - id: unknown1
        type: s2
      - id: unknown2
        type: s2
      - id: unknown3
        type: s2
      - id: unknown4a
        size: 37
      - id: number_of_layers
        type: s2
      - id: unknown4b
        size: 8
      - id: number_of_styles
        type: s2
      - id: unknown4c
        size: 8
      - id: number_of_linetypes
        type: s2
      - id: unknown4d
        size: 8
      - id: number_of_views
        type: s2
      - id: unknown4e
        size: 6
      - id: insertion_base_x
        size: 8
        doc: 0x005e-0x0065, $INSBASE/10
      - id: insertion_base_y
        size: 8
        doc: 0x0066-0x006d, $INSBASE/20
      - id: insertion_base_z
        size: 8
        doc: 0x006e-0x0075
      - id: number_of_entities
        type: s2
        doc: 0x0076-0x0077
      - id: drawing_first_x
        size: 8
        doc: $EXTMIN/10
      - id: drawing_first_y
        size: 8
        doc: $EXTMIN/20
      - id: drawing_first_z
        size: 8
      - id: drawing_second_x
        size: 8
        doc: $EXTMAX/10
      - id: drawing_second_y
        size: 8
        doc: $EXTMAX/20
      - id: drawing_second_z
        size: 8
      - id: limits_min_x
        size: 8
        doc: 0x00a8-0x00af, $LIMMIN/10
      - id: limits_min_y
        size: 8
        doc: 0x00b0-0x00b7, $LIMMIN/20
      - id: limits_max_x
        size: 8
        doc: 0x00b8-0x00bf
      - id: limits_max_y
        size: 8
        doc: 0x00c0-0x00c7
      - id: view_ctrl_x
        size: 8
        doc: 0x00c8-0x00cf, $VIEWCTRL/10
      - id: view_ctrl_y
        size: 8
        doc: 0x00d0-0x00d7, $VIEWCTRL/20
      - id: view_ctrl_z
        size: 8
        doc: 0x00d8-0x00da
      - id: view_size
        size: 8
        doc: 0x00e0-0x00e7
      - id: snap
        type: s2
        doc: 0x00e8-0x00e9, $SNAPMODE
      - id: snap_resolution_x
        size: 8
        doc: 0x00ea-0x00f1, $SNAPUNIT/10
      - id: snap_resolution_y
        size: 8
        doc: 0x00f2-0x00f9, $SNAPUNIT/20
      - id: snap_base_x
        size: 8
        doc: 0x00fa-0x0101, $SNAPBASE/10
      - id: snap_base_y
        size: 8
        doc: 0x0102-0x0109, $SNAPBASE/20
      - id: snap_angle
        size: 8
        doc: 0x010a-0x0111, $SNAPANG
      - id: snap_style
        type: s2
        doc: 0x0112-0x0113, $SNAPSTYLE
      - id: snap_iso_pair
        type: s2
        doc: 0x0114-0x0115, $SNAPISOPAIR
      - id: grid
        type: s2
        doc: 0x0116-0x0117, $GRIDMODE
      - id: grid_unit_x
        size: 8
        doc: 0x0118-0x011f, $GRIDUNIT/10
      - id: grid_unit_y
        size: 8
        doc: 0x0120-0x0127, $GRIDUNIT/20
      - id: ortho
        type: s2
        doc: 0x0128-0x0129, $ORTHOMODE
      - id: regen
        type: s2
        doc: 0x012a-0x012b, $REGENMODE
      - id: fill
        type: s2
        doc: 0x012c-0x012d, $FILLMODE
      - id: qtext
        type: s2
        doc: 0x012e-0x012f, $QTEXTMODE
      - id: drag
        type: s2
        doc: 0x0130-0x0131, $DRAGMODE
      - id: linetype_scale
        size: 8
        doc: 0x0132-0x0139, $LTSCALE
      - id: text_size
        size: 8
        doc: 0x013a-0x0141, $TEXTSIZE
      - id: trace_width
        size: 8
        doc: 0x0142-0x0149, $TRACEWID
      - id: current_layer
        type: s2
        doc: 0x014a-0x014b, $CLAYER
      - id: unknown6
        size: 8
        doc: 0x014c-0x0153
      - id: unknown7a
        size: 2
        doc: 0x0154-0x0155
      - id: unknown7b
        size: 2
        doc: 0x0156-0x0157
      - id: unknown7c
        size: 2
        doc: 0x0158-0x0159
      - id: unknown7d
        size: 2
        doc: 0x015a-0x015b
      - id: unknown8
        size: 8
        doc: 0x015c-0x0163
      - id: linear_units_format
        enum: unit_types
        type: s2
        doc: 0x0164-0x0165, $LUNITS
      - id: linear_units_precision
        type: s2
        doc: 0x0166-0x0167, $LUPREC
      - id: axis
        type: s2
        doc: 0x0168-0x0169, $AXISMODE
      - id: axis_value_x
        size: 8
        doc: 0x016a-0x171, $AXISUNIT/10
      - id: axis_value_y
        size: 8
        doc: 0x0172-0x0179, $AXISUNIT/20
      - id: sketch_increment
        size: 8
        doc: 0x017a-0x0181, $SKETCHINC
      - id: fillet_radius
        size: 8
        doc: $FILETRAD
      - id: units_for_angles
        enum: units_for_angles
        type: s2
        doc: $AUNITS
      - id: angular_precision
        type: s2
        doc: $AUPREC
      - id: text_style
        type: s2
        doc: 0x018e-0x018f, $TEXTSTYLE (index)
      - id: osnap
        enum: osnap_modes
        type: s2
        doc: 0x0190-0x0191, $OSMODE
      - id: attributes
        enum: attributes
        type: s2
        doc: 0x0192-0x0193, $ATTMODE
      - id: menu
        size: 15
        type: str
        encoding: ASCII
        doc: $MENU
      - id: dim_scale
        size: 8
        doc: $DIMSCALE
      - id: dim_arrowhead_size
        size: 8
        doc: $DIMASZ
      - id: dim_extension_line_offset
        size: 8
        doc: $DIMEXO
      - id: dim_baseline_spacing
        size: 8
        doc: $DIMDLI
      - id: dim_extension_line_extend
        size: 8
        doc: $DIMEXE
      - id: dim_maximum_tolerance_limit
        size: 8
        doc: 0x01cb-0x01d2, $DIMTP
      - id: dim_minimum_tolerance_limit
        size: 8
        doc: 0x01d3-0x01da, $DIMTM
      - id: dim_text_height
        size: 8
        doc: 0x01db-0x01e2, $DIMTXT
      - id: dim_center_mark_control
        size: 8
        doc: 0x01e3-0x01ea, $DIMCEN
      - id: dim_oblique_stroke_size
        size: 8
        doc: 0x01eb-0x01f2, $DIMTSZ
      - id: dim_tolerances
        type: s1
        doc: 0x01f3, $DIMTOL
      - id: dim_limits_default_text
        type: s1
        doc: 0x01f4, $DIMLIM
      - id: dim_text_ext_inside_line_position
        type: s1
        doc: 0x01f5, $DIMTIH
      - id: dim_text_ext_outside_line_position
        type: s1
        doc: 0x01f6, $DIMTOH
      - id: dim_extension_line_first_suppress
        type: s1
        doc: 0x01f7, $DIMSE1
      - id: dim_extension_line_second_suppress
        type: s1
        doc: 0x01f8, $DIMSE2
      - id: dim_text_vertical_position
        type: s1
        doc: 0x01f9, $DIMTAD
      - id: limits_check
        enum: limits_check
        type: s2
        doc: 0x01fa-0x01fb, $LIMCHECK
      - id: unknown10
        size: 45
      - id: elevation
        size: 8
        doc: $ELEVATION
      - id: thickness
        size: 8
        doc: $THICKNESS
      - id: view_point_x
        size: 8
        doc: 0x0239-0x0241, $VIEWDIR/10
      - id: view_point_y
        size: 8
        doc: 0x0242-0x0249, $VIEWDIR/20
      - id: view_point_z
        size: 8
        doc: 0x024a-0x0251, $VIEWDIR/30
      - id: unknown11
        size: 8
      - id: unknown12
        size: 8
      - id: unknown13
        size: 8
      - id: unknown14
        size: 8
      - id: unknown15
        size: 8
      - id: unknown16
        size: 8
      - id: unknown17
        size: 8
      - id: unknown18
        size: 8
      - id: unknown19
        size: 8
      - id: unknown20
        size: 8
      - id: unknown21
        size: 8
      - id: unknown22
        size: 8
      - id: unknown23
        size: 8
      - id: unknown24
        size: 8
      - id: unknown25
        size: 8
      - id: unknown26
        size: 8
      - id: unknown27
        size: 8
      - id: unknown28
        size: 8
      - id: unknown29
        size: 2
      - id: blip
        type: s1
        doc: 0x02e3, $BLIPMODE, TODO s1 or s2?
      - id: unknown29a
        size: 1
      - id: dim_suppression_of_zeros
        type: s1
        doc: 0x02e5, $DIMZIN
      - id: dim_rounding
        size: 8
        doc: 0x02e6-0x02ed, $DIMRND
      - id: dim_extension_line_extend2
        size: 8
        doc: 0x02ee-0x02f5, $DIMDLE
      - id: dim_arrowhead_block
        size: 32
        type: str
        encoding: ASCII
        doc: $DIMBLK
      - id: unknown30
        type: s1
      - id: circle_zoom_percent
        type: s2
        doc: 0x0317-0x0318
      - id: coordinates
        enum: coordinates
        type: s2
        doc: 0x0319-0x031a, $COORDS
      - id: current_color
        enum: current_color
        type: s2
        doc: 256d - bylayer, 0d - byblock, other index (1-255), $CECOLOR
      - id: current_linetype
        type: s2
        doc: 256d - bylayer, 255d - byblock, other index, $CELTYPE
      - id: create_date_days
        type: u4
        doc: $TDCREATE/days
      - id: create_date_ms
        type: u4
        doc: $TDCREATE/ms
      - id: update_date_days
        type: u4
        doc: $TDUPDATE/days
      - id: update_date_ms
        type: u4
        doc: $TDUPDATE/ms
      - id: total_editing_time_days
        type: u4
        doc: $TDINDWG/days
      - id: total_editing_time_ms
        type: u4
        doc: $TDINDWG/ms
      - id: user_elapsed_timer_days
        type: u4
        doc: $TDUSRTIMER/days
      - id: user_elapsed_times_ms
        type: u4
        doc: $TDUSRTIMER/ms
      - id: user_timer
        type: s2
        doc: 0x033f-0x0340, $USRTIMER
      - id: fast_zoom
        type: s1
        doc: 0x0341, $FASTZOOM
      - id: unknown33
        size: 1
      - id: sketch_type
        type: s1
        doc: 0x0343, $SKPOLY
      - id: unknown33b
        size: 7
      - id: unknown34
        size: 8
      - id: angle_base
        size: 8
        doc: 0x0353-0x035a, $ANGBASE
      - id: angle_direction
        enum: angle_direction
        type: s2
        doc: 0x035b-0x035c, $ANGDIR
      - id: point_mode
        type: s2
        doc: 0x035d-0x035e, $PDMODE
      - id: point_size
        size: 8
        doc: $PDSIZE
      - id: polyline_width
        size: 8
        doc: $PLINEWID
      - id: user_integer_1
        type: s2
        doc: 0x035f-0x0360, $USERI1
      - id: user_integer_2
        type: s2
        doc: 0x0361-0x0362, $USERI2
      - id: user_integer_3
        type: s2
        doc: 0x0363-0x0364, $USERI3
      - id: user_integer_4
        type: s2
        doc: 0x0365-0x0366, $USERI4
      - id: user_integer_5
        type: s2
        doc: 0x0367-0x0368, $USERI5
      - id: user_real_1
        size: 8
        doc: $USERR1
      - id: user_real_2
        size: 8
        doc: $USERR2
      - id: user_real_3
        size: 8
        doc: $USERR3
      - id: user_real_4
        size: 8
        doc: $USERR4
      - id: user_real_5
        size: 8
        doc: $USERR5
      - id: dim_alternate_units
        type: s1
        doc: 0x03a1, $DIMALT
      - id: dim_alternate_units_decimal_places
        type: s1
        doc: 0x03a2, $DIMALTD
      - id: dim_associative
        type: s1
        doc: 0x03a3, $DIMASO
      - id: dim_sho
        type: s1
        doc: 0x03a4, $DIMSHO
      - id: dim_measurement_postfix
        size: 16
        type: str
        encoding: ASCII
        doc: $DIMPOST, TODO And prefix?
      - id: dim_alternate_measurement_postfix
        size: 16
        type: str
        encoding: ASCII
        doc: $DIMAPOST, TODO And prefix
      - id: dim_alternate_units_multiplier
        size: 8
        doc: 0x03c5-0x03cc, $DIMALTF
      - id: dim_linear_measurements_scale_factor
        size: 8
        doc: 0x03cd-0x03d4, $DIMLFAC
    instances:
      create_date:
        value: create_date_days + (create_date_ms / 86400000.0)
      update_date:
        value: update_date_days + (update_date_ms / 86400000.0)
      ## TODO
  entity:
    seq:
      - id: entity_type
        type: s1
        enum: entities
      - id: data
        type:
          switch-on: entity_type
          cases:
            'entities::arc': entity_arc
##            'entities::block_begin': entity_block_begin
##            'entities::block_end': entity_block_end
##            'entities::block_insert' : entity_block_insert
            'entities::circle': entity_circle
            'entities::line': entity_line
            'entities::tmp': entity_tmp
##            'entities::load': entity_load
            'entities::point': entity_point
            'entities::polyline': entity_polyline
##            'entities::repeat_begin': entity_repeat_begin
##            'entities::repeat_end': entity_repeat_end
            'entities::seqend': entity_seqend
##            'entities::shape': entity_shape
##            'entities::solid': entity_solid
##            'entities::text': entity_text
##            'entities::trace': entity_trace
            'entities::vertex': entity_vertex
  entity_mode:
    seq:
      - id: entity_mode1
        type: b1
      - id: entity_mode2
        type: b1
      - id: entity_mode3
        type: b1
      - id: entity_mode4
        type: b1
      - id: entity_thickness_flag
        type: b1
      - id: entity_mode5
        type: b1
      - id: entity_linetype_flag
        type: b1
      - id: entity_color_flag
        type: b1
  entity_common:
    seq:
      - id: entity_mode
        type: entity_mode
      - id: entity_size
        type: s2
      - id: entity_layer_index
        type: s1
      - id: unknown2
        size: 3
      - id: entity_color
        type: s1
        if: entity_mode.entity_color_flag
      - id: entity_linetype_index
        type: s1
        if: entity_mode.entity_linetype_flag
      - id: entity_thickness
        size: 8
        if: entity_mode.entity_thickness_flag
  entity_arc:
    seq:
      - id: entity_common
        type: entity_common
      - id: x
        size: 8
      - id: y
        size: 8
      - id: radius
        size: 8
      - id: angle_from
        size: 8
      - id: angle_to
        size: 8
##  entity_block_begin:
##    seq:
##      - id: layer
##        type: s2
##      - id: size
##        type: s2
##      - id: value
##        size: size
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##  entity_block_end:
##    seq:
##      - id: layer
##        type: s2
##  entity_block_insert:
##    seq:
##      - id: layer
##        type: s2
##      - id: size
##        type: s2
##      - id: value
##        size: size
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##      - id: x_scale
##        size: 8
##      - id: y_scale
##        size: 8
##      - id: rotation_angle
##        size: 8
  entity_circle:
    seq:
      - id: entity_common
        type: entity_common
      - id: x
        size: 8
      - id: y
        size: 8
      - id: radius
        size: 8
  entity_line:
    seq:
      - id: entity_common
        type: entity_common
      - id: x1
        size: 8
      - id: y1
        size: 8
      - id: x2
        size: 8
      - id: y2
        size: 8
  entity_tmp:
    seq:
      - id: entity_mode
        type: entity_mode
      - id: entity_size
        type: s2
      - id: xxx
        size: entity_size - 4
##  entity_load:
##    seq:
##      - id: layer
##        type: s2
##      - id: size
##        type: s2
##      - id: value
##        size: size
  entity_point:
    seq:
      - id: entity_common
        type: entity_common
      - id: x
        size: 8
      - id: y
        size: 8
  entity_polyline:
    seq:
      - id: entity_common
        type: entity_common
##  entity_repeat_begin:
##    seq:
##      - id: layer
##        type: s2
##  entity_repeat_end:
##    seq:
##      - id: layer
##        type: s2
##      - id: columns
##        type: s2
##      - id: rows
##        type: s2
##      - id: column_distance
##        size: 8
##      - id: row_distance
##        size: 8
  entity_seqend:
    seq:
      - id: entity_common
        type: entity_common
      - id: unknown
        size: 4
##  entity_shape:
##    seq:
##      - id: layer
##        type: s2
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##      - id: height
##        size: 8
##      - id: angle
##        size: 8
##      - id: item_num
##        type: s2
##  entity_solid:
##    seq:
##      - id: layer
##        type: s2
##      - id: from_x
##        size: 8
##      - id: from_y
##        size: 8
##      - id: from_and_x
##        size: 8
##      - id: from_and_y
##        size: 8
##      - id: to_x
##        size: 8
##      - id: to_y
##        size: 8
##      - id: to_and_x
##        size: 8
##      - id: to_and_y
##        size: 8
##  entity_text:
##    seq:
##      - id: layer
##        type: s2
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##      - id: height
##        size: 8
##      - id: angle
##        size: 8
##      - id: size
##        type: s2
##      - id: value
##        size: size
##  entity_tmp:
##    doc: Removed after redraw
##    seq:
##      - id: layer
##        type: s2
##      - id: x1
##        size: 8
##      - id: y1
##        size: 8
##      - id: x2
##        size: 8
##      - id: y2
##        size: 8
##  entity_trace:
##    seq:
##      - id: layer
##        type: s2
##      - id: from_x
##        size: 8
##      - id: from_y
##        size: 8
##      - id: from_and_x
##        size: 8
##      - id: from_and_y
##        size: 8
##      - id: to_x
##        size: 8
##      - id: to_y
##        size: 8
##      - id: to_and_x
##        size: 8
##      - id: to_and_y
##        size: 8
  entity_vertex:
    seq:
      - id: entity_common
        type: entity_common
      - id: x
        size: 8
      - id: y
        size: 8
enums:
  entities:
    -127: tmp
    1: line
    2: point
    3: circle
    4: shape
    5: repeat_begin
    6: repeat_end
    7: text
    8: arc
    9: trace
    10: load
    11: solid
    12: block_begin
    13: block_end
    14: block_insert
    15: unknown1
    16: unknown2
    17: seqend
    18: polyline
    19: unknown4
    20: vertex
  osnap_modes:
    0: none
    1: endpoint
    2: midpoint
    4: center
    8: node
    16: quadrant
    32: intersection
    64: insertion
    128: perpendicular
    256: tangent
    512: nearest
  unit_types:
    1: scientific
    2: decimal
    3: engineering
    4: architectural
    5: fractional
  units_for_angles:
    0: decimal_degrees
    1: degrees_minutes_seconds
    2: gradians
    3: radians
    4: surveyor_s_units
  angle_direction:
    0: counterclockwise
    1: clockwise
  limits_check:
    0: objects_can_outside_grid
    1: objects_cannot_outside_grid
  coordinates:
    0: absolute_coordinates
    1: absolute_coordinates_realtime
    2: relative_polar_coordinates
  attributes:
    0: off
    1: normal
    2: on
  current_color:
    0: byblock
    1: red
    2: yellow
    3: green
    4: cyan
    5: blue
    6: magenta
    7: white
    256: bylayer
