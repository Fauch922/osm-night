/* ****************************************************************** */
/* OSM Night for Imposm                                              */
/* ****************************************************************** */
/*
* This pallette file can be used instead of the OSM Bright pallette that 
* comes with the project osm-bright: https://github.com/mapbox/osm-bright
* simply change that pallette.mss to this OSMNight.mss and change the name to 
* pallette.mss and you can use it with tile-mill.
*/

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #5a5a5a;
@water:             #222222;
@grass:             #6f826f;
@beach:             #9f9783;
@park:              #868686;
@cemetery:          #9e9e9e;
@wooded:            #132700;
@agriculture:       #9f8606;

@building:          #a4a4a4;
@hospital:          #e8c4c0;
@school:            #7c7c7c;
@sports:            #6f826f;

@residential:       @land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
@parking:           #717171;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     #dd7d7d;
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #E68A5C;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #eec779;
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    #f6e79e;
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #9c9c9c;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #b5b5b5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #b5b5b5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #9c9c9c;
@rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#9c9c9c,34%);

@country_text:      #ffffff;
@country_halo:      @place_halo;

@state_text:        #ffffff;
@state_halo:        @place_halo;

@city_text:         #d7d7d7;
@city_halo:         @place_halo;

@town_text:         #d7d7d7;
@town_halo:         @place_halo;

@poi_text:          #d7d7d7;

@road_text:         #d7d7d7;
@road_halo:         #9c9c9c;

@other_text:        #d7d7d7;
@other_halo:        @place_halo;

@locality_text:     #d7d7d7;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #d7d7d7;
@village_halo:      @place_halo;

/* ****************************************************************** */


