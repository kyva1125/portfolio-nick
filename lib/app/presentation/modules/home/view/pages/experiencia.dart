import 'package:flutter/material.dart';
import 'package:portfolio_nick_flutter/app/data/helpers/typography.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/widgets/title_area.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile_plus/timeline_tile_plus.dart';

class Experiencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sw, vertical: 20),
        child: Column(
          children: [
            TitleArea(primero: 'Mi', segundo: 'Experiencia'),
            SizedBox(height: 10,),
            // TODO Necesito meterlo en un JSON y jalar de ahi para el portfolio igual
            TimelineTile(
                isFirst: true,
                alignment: TimelineAlign.center,
                startChild:
                    startTimeline('Junio 2024 - Presente', 'ANDES EXPRESS'),
                endChild: endTimeline(
                  'Analista Flutter Developer',
                  "Desarrollo y reingenieria del aplicativo Andytrack para recojo y reparto de productos",
                )),
            TimelineTile(
                alignment: TimelineAlign.center,
                startChild:
                    startTimeline('Octubre 2023 - Junio 2024', 'XTend SAC'),
                endChild: endTimeline(
                  'Semi Sr. Flutter Developer',
                  "* Encargado de desarrollar aplicativo para la gestión de citas para la empresa COMSATEL\n* Desarrollador semi senior con la capacidad de analisis de requisitos para la empresa COMSATEL.\n* Modificador de funcionalides del aplicativo ENOTRIA de recojo de paquetes",
                )),
            TimelineTile(
                alignment: TimelineAlign.center,
                startChild: startTimeline(
                    'Octubre 2022 – Octubre 2023', 'PECANO SOFTWARE SAC'),
                endChild: endTimeline(
                  'Desarrollador Flutter Developer',
                  "* Encargado de desarrollar aplicativos para comercios que administran los grifos.\n* Migracion a web con Flutter para el aplicativo comercio.\n* Desarrollo de POS de Tankea.",
                )),
            TimelineTile(
                alignment: TimelineAlign.center,
                startChild:
                    startTimeline('Marzo 2022 – Septiembre 2022', 'FRELANCER'),
                endChild: endTimeline(
                  'Desarrollador de apps móvil y web – Seguridad Ciudadana',
                  "* Diseño de todo el aplicativo utilizando Figma.\n* Desarrollo del aplicativo Seguridad Ciudadana.\n* Rastreo de ciudadanos a través del mapa utilizando GPS.",
                )),
            TimelineTile(
                alignment: TimelineAlign.center,
                startChild:
                    startTimeline('Marzo 2022 – Agosto 2022', 'FRELANCER'),
                endChild: endTimeline(
                    'Desarrollador de app desktop - Gestión de botellas de O2',
                    "* Diseño de todo el aplicativo utilizando Figma.\n* Control de almacen para el inventario de botellas de O2, Co2, etc.\n* Reporte a travez de PDF de los inventarios.")),
            TimelineTile(
                alignment: TimelineAlign.center,
                startChild:
                    startTimeline('Enero 2021 – Octubre 2021', 'FRELANCER'),
                endChild: endTimeline(
                    'Desarrollador de aplicacione moviles - Delivery de comidas,',
                    "* Desarrollo del aplicativo diseñado en AdobeXD\n* Creacion de Comercios y sucursales, para un seguimiento de los pedidos.")),
            TimelineTile(
                isLast: true,
                alignment: TimelineAlign.center,
                startChild:
                    startTimeline('Febrero 2020 – Noviembre 2020', 'FRELANCER'),
                endChild: endTimeline(
                    'Desarrollo de aplicativo de búsqueda de enfermeras',
                    "Desarrollo del aplicativo con seguimiento de GPS para busqueda de enfermeras quienes puedan atender a los pacientes."))
          ],
        ));
  }

  Widget startTimeline(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(title, style: comfortaaStyle()),
          Text(subtitle, style: headerTextStyle()),
        ],
      ),
    );
  }

  Widget endTimeline(String role, String description) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(role, style: headerTextStyle(color: Colors.green)),
          Text(description, style: normalStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
