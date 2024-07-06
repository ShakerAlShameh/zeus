import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zeus_card/app/transition_page.dart';
import 'package:zeus_card/core/resources/fonts/font_manager.dart';
import '../widgets/custom_home_container.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class RoutesNames {
  static const String homeRoute = '/Home';
}

class RoutesPaths {
  static String homeRoute = '/Home';
}

late StatefulNavigationShell appNavigationShell;
final GoRouter appRouter = GoRouter(
  initialLocation: RoutesPaths.homeRoute,
  navigatorKey: rootNavigatorKey,
  routes: [
    GoRoute(
      path: RoutesPaths.homeRoute,
      pageBuilder: (context, state) {
        return TransitionPage(
          key: ValueKey(RoutesPaths.homeRoute),
          child: Scaffold(
            extendBodyBehindAppBar: true,
            drawer: Drawer(
              child: Column(
                children: [
                  Text(
                    "in coding....",
                    style: TextStyle(
                      fontFamily: FontFamilyManager.bungee,
                      fontSize: 40.sp,
                    ),
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 50.w),
                    child: Container(
                      height: 350.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.sp),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.green,
                            blurRadius: 40,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.r),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image.network(
                            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFRUXFRcWGBgYGBcXGBgVFhcXFxcXGBYaHSggGBolHRUVITEhJSktLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHR0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAH0BkgMBEQACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAAAwECBAUGB//EAEEQAAEDAgIHBQYEBQIGAwAAAAEAAhEDIQQxBQYSQVFhcSKBkaHBEzJCsdHwUmKS4RQjQ1OCcqIVJDOywvFjc+L/xAAaAQACAwEBAAAAAAAAAAAAAAAAAQIDBAUG/8QAMREAAgEDAwMCBQMEAwEAAAAAAAECAwQREiExBRNBUWEUIjJCcRUjUoGhseEzkcEk/9oADAMBAAIRAxEAPwDqkr1h4khw4GEnuAFNAKcpoYlykmBpBkWMfd1U0BdAENbGSQgDgmMC64F7+CQA8wMpTESkBDTI4ckADXTxTAgwbeSQEuncmMklICMvuUCBAEoAEwBAAgARsAIBYCUhgL5X6Icl6goyfCHNwtQ5Mef8T9FB1YLmSJqjUf2jm6KrnKjU/SVB3NJfcixWtd8RY9mgMSf6Tu8tHqoO9or7ixWNd/axzdWMSfgA6uCrfUKS8li6bXfg4OmKT8NV9nVGY2gWnd65K+lcRqLMSmrazpbSCkQ4S10hXKRm0s2aKoNq1W0tuJmSIgAAmSZ+5VFevojlLJot6CqT0t4R6enqnRNvbknls/Jc6XUKq+06a6ZSe2s52l9WalIFzT7RgztDgOMcFpt7+M3pksMy3PTZ0lqg8o4K3nOKh4Mp+BFgd3JIACBgYF0ADnQmBIKQiGmd0JgANzb90kBStwvdNPDGJ2lYAxpURF2JMCwBnPuUcASjAAQngAQMqDIkJAU2ecqSAU9TQImjUi0TdRmtsgaCFHAA0WQAQkBDXg5bkATtXiDlnuQAEm1v2QAOPASmAOdG49yQgkIzhZew8POFuzdQ0LiHXFJ9+IjwBWeV1Rj9xpjZ139ppp6tYo/0wOrm/VVu/o+paunV34Hs1SxJz9mOrj6BQfUaS43Jrpdb2Hs1Orb6jB+oqD6lHwixdJqeWh7NS3b6w7m/uq31P0iWLpD8yHM1MZvqu7gB9VF9Tn4SLF0iHmTHs1QoDN1Q94Hoq31Gr7E10qkuWxrNVsMMw49XH0UPj63hli6bb+V/cezV7Cj+kO9zz8you7rv7v8ABYrG3XEf8jmaJw4yos8Aq+/Vf3MsVtRX2oZ7Kg34Kbe5oS1VJeWPFGPoKqaWw7f6lMcg5p8gpKhVlwmQdzbx5aX/AEZ6ms+HHxz0aT6KxWVZ+Cp9RoLyZKmuFIZMee4D1Vq6bVfOEVS6rSXCbMtTXM/DR8XegCtj0z1kUy6u/EcfkyVdb6xyaxvcT6q2PTaa5bZRLqtV8JI8trNj6lYh1QgxMQALGJ+QWyFtCnD5DLK5nVeZPJx8Mb9yTIvg6ODF1ZTW25U9uDoNMXFjyUnFNYZFNxeUev1X04Xn2NUyY7LjvjNp4mPVca9tdHzw2R3LC87j7c99jzmnMMKdd7W+7Mjo68ea6NrNzpJs5l5TVOtJI41R0PI4wr098GfwamOlSYgiRw6fVAEyMvJLIA03IugABM5d6AAkzlbimBDnRuJSES50XKGMzVRfkbq2O6AlpSYDKfeotAXDrxFozUQLJgQ42sgRIQMEgFk3Nk0Ap7bypoEUDoITfAGp8xaJ5qoC0IAqAGjgAgCQbSjKAGOkZR1QBDSd/wBhCAGzJmI3JAAmT5Jge21S0M0MFZ4lzrtn4W7iOZXEvbiUpuCeyO/060jGHclu2elXPOrtnBBcgHsKqYprc3NHUgKag3wit1Yrlox1dN0G51Wdxn5KyNtVfEWUyu6UeZGSprRhxk4no0+sK5WNZ+CiXUqK85MlXW+n8LHnwCuj02flpFEuq0/CbMtTXB3w0gOrifkArV01eZFL6s/tiZKmtNc5bA7ifmVaun01yVS6nWfGDLU09iD/AFSOgaPRWqyorwUSvq0vuMtTHVXZ1Hn/ACPyVqoU1wkUutUfMmIcZzurNKXgg235IRhEQTAEDyCBIEDM2Opy1ThvsNM5FAdpZpLDwWvg62DYrksIqkzUUES2DxWxVY/8Lp8AbffFQrU9cNJdQqduakvBbEVi9xe4yXGSinBQiorwRqTc5OTOdjhcHl8v/aUxRJw1RWp6oiaNRG+VEiAdaRf1QMHExbPmgCXTFs0gAkxbNMABtdAgaZGUcigYurDgYvCcWBnYrcANYTPL7zUHkBocMt6iwLpgCiIExkNBvJ3+SSACmAl8zyUo8ghTwppIB9KpYWnceSrksMBj2yMyOiiGQc4DPegCHuIyE+SGwJfMW80AQ8WzjmgAcJtKAB3AFLwNcn1XBs2abBwa0eAC8vN5k2ewppKCRh09pUUKe1m4mGjnxPIK62t3WnjwZru6VCCfl8HhMVpCrUMvqOPKSB3AWC7tO3pwWEjzk69Sby5P/sylXaUirLYII7AngYIDII/A2CBAgAQBcUnROyY4wYUdcc4yT7c/Rk0KLnnZa0uPACSlOcYLMnsEISm8RWWGIoOY7Ze0tdwOd0QnGa1RewTpyg9MlhjtHYB9Z4YyJib5ADefJQr1lSjmRO3oSrS0x5NeltBVMO0OcWuBMdmbGJ3hU0LyFWWlJovurKdGClJp/g52HpbT2t/E4DxMLTUlpi5ehlhDVNR9TqaxaDbh2sh5cXTmAMo+qyWd3KrJ5WyNt5Zxt0mnuzyNShDxzW2otzGpZR1GNgJ+CBWo5SigCi3ek2AwnelkRysXjWkgASBv+iqkWxjhEUaozCIPSxNHSabE3++CtIEye5AE85skARE3z+7IAADJv+yBEgGTlCBkbRmItxQBMiY35o2QGOoyHFWxAs110b5Ac1QYDEAAco8iBrAMuqeBkbd435pZANkTO+ITAo83hPICXtUgyTh3wY4omwNDgZF+7iq3yINoTG/NDAATOVkgA2Mk28uqfAysj3he3kjIE8wLmJ496AGUWS9oA95wv1MXUZvEWTprMkfVSV5flnrlsjxeutWarG8GT+o//ldjp0flcjhdUnmcY+h51dP2OVnG5u0foitWuxlvxEgDxOfcs1W6pUtm9zVRs61VZSGaQ0HWot2ngbPEGYlRpXlKq8IlWsqtGOqSQ7QugHYhpeHhoBi4JPH1Ubm8jRenGSdrYOutWrB0xqda1YE/6f3Wb9Sae8TX+lZ4nk4lTRTmV20X73NEje0mJHmtsblSpOpFcGB2rhWVOXk9FjNFYGhHtdqTlJcZjoubTuLmrnQdWrbWtHCmcjTOIwhp7NBkO2heDlfeStdvC4Us1HsYbupauOmktzp6E0VTo0v4iuJMbQB+Ebrb3FZri4nVn2oGq0tadGn3qpQ65dqBR7P+q8dIhP8ATJY+rcX6rvhQ2I1frNq46o9ohpYSBl+AZeKLqLp20Yt7hZTjUupTjwzl61vnFVOWyP8AYD6rXYL9lGLqLzcPf0OvqxTFHD1MQ7eDH+luXiT5BZLyTq1lTRt6fFUaEqzNuJP8Tgdo+9sbX+bDf5HxWeH7Fxj3waauLi0b9snkdCtmvSH/AMjfIyuzdPFKX4OJaxzWj+Tva+u7VIcnn/t+i5/S1tJnR6w94I8mWCx4Lrs4q9CSUIYoNkqXCAtXrhgkn6lQbBLJxsVi3P5Dh9eKrbyXKOBDQTkhRbexLODTQwhNyY+asVL1IOSOpRZAtyud+7PomVMlzwCb9yeALMbaIskwFsqbVot5ZoQDLGxBsfspATO1kd+75IzkCXk7hKABxAzjgkArFMkTwU48gjO1ysk8MY5ouDwUZCGylgBgCiIgkzlbikBKYypBkZRvSAhxTyAp7b5qXLAVtQVPKewzW2ZmbRl6qlppiBjgbjokBUGB2iEAQ7sgACykgKUHbRJ3ZBLVlgxgde5N93BNoEbNDM2q9Jsn/qMM8YM+iz3LxSl+C+1Wa0V7n0t5XnkepfCPA6z1ZxDuQaPIH1XdsY4oo831CWqsznUGbT2g2Bc0eJC01G4xbRmppSmovjJ7vT9Osyi1uGBAFjs+8GgWhcG1dN1G6p6O7VSNLFL+3oeOxWkq7mmnUe4iZIdmCOZuuvToUtWqCwcGrcVnHt1G2vfk9Tqx2cG4/wD2HwH7LmXrzcb+x2bDa1bXucfU7B1Pbh+yWtAMkggGRYc+Pctd/Uh29PLZi6bRqd3W9kv7m7SFcVNI0mj4IB6jacR8lTSg4Wkm/JorTU72CXj/AGdDT+i6dZzDUqinsgiLXk53PJZrW4lSTUI5yaby2hVac5YweX0hgKTK1OnTqe0Di0OMtMEuiLcl1KVWpOnKUljByK1vSp1oxg85PQ67uIoMaMi8T3Awuf07erlnT6o8UUjxK7p509NqK3+ZUPBgHi79ly+pv5Yo7HSF80vwc7TFM1MY9rc3VA35NnyV9CShbKT9DJcx7l20vU9bpPRzHUW0TUFNrY4SQ3LM8brk0a0lUdRLLO5Xt4ypKk3pSL6Cw9Kmw0qdUVIMm7SRO62QsUric5y1yjjI7WnTpwcIS1HltF4TYx7af4Xu8A0lvlC6larqtdXqjkUKOi8UPRs3644SpUqs2KbnAMiwJEkneqLCrThB6njc0dTpVKlRaFnY81isI+mQKjS0kTB4LpwqwqbxeTkVKUqbxJYM71aVmXFYwM7Iu77zUG34JRj6mB+HqPBqEW2tmTa8TAHRRUdUtLLsYjqCnhCtCpxjyQcjXSw0cuCbn6ENQ8GMunJQ5ES0F3T73o2Ac2mFHIFMS+GnwUZvYEZaLrRJClH6Rs1g8CLZ/e5IRYm8RbigCGADsgoABl2o5wkAOuLH1kJ/gDI8bJhXaljcZcdVGSENlADXTaOPkoASTGaQFXNmPFAge6N0p5GBakAt4M8t6lkBTomFNPcYzDmxk5eQVcluIYbi0ifFRAJvEZDNMDJiKhvfpyCJPCJIfgm9nqVGHAmXrDeFPkSOlqqdrFUr5F3eQ0n0WS92os2WCzcRPoVQrhI9E2fOdKVNqtUP53eRheht46aaR5a4lqqNmVXsp/qei0drZUYA2o0PAttZOj5Fcyt0+LbcHg6tv1WUY4nudbWqkyphvaxcbJacjDiLeByWSylKNVRNvUIQnQ7hfQtb2WBD4nZa90ce04gJXEe5cuPuTtZ9q11exwsZrVWeNlobT5i58T9Fvp9OpxeZPJzKnU6rWIrAjVZs4qmeG2T+h3qVK9wqDS9iPT05XCz7s6+s+iK1asHU2S0MDZJAvLiczzCyWVxTpQakzZf2tWtUTgtsHAx2jauHLC8AEmRBn3YN1vp14V8qJzatvUt5KUj2JdRxtGC69jYjaa4cvuVx8VLapnB3G6V3SSb3OWNXcPR7VetIHw2bPLOT3LV8bWq/LCOGZfgKFL5qk8oVqtjqNN1ZznNYCRsg27MusPFO9p1JqCW78kOn1acHNvZeDNozSFFuKqVqhMS4sgEyXHPw+atrUqjoRpxX5KqFxSjcTqS48HP01jvbVnPvGTZ3NGX171qtaPbpKLMl3XdarlcFtCaTOHeXBu0C2CJjeCLpXNv3klxgdpc/Dyb9Rz9OE4gYgMAMRsySMiJm3HyVcbRKl2my2V6+93kjZU1vrHJtMdxPqql02n5bLn1aq90kcfSOkH1nbVQiQIECBC10aMKSxEw17idaWZMxVGTvI6Z/srykWzCNGQTTSG2zdiQ1uGoi3afVee52w35FZaUnKvJ+mxpqbUIL1yYC5a9JlKNk2H2FLZDHMobzcqLkIaogCBMxY59wOF1VNk4oXRdG/PJXU/pBmxp4QdxUeCJIAHZEjeN6AJJiDE7rfeSAJDbm88uCQETIMSN2SeAFYttgTnkpwaXICWkqckwHJYAe0W4qpAQCDPggCTyQBAMC/C6YAQHAeISAq+bRlvTAU6J5qSAimS3nKHwMeQCROYvCrELrPgdred3BNAjA53gqpPUyeDoYN4LRBn6qyPBGSHFSI8nQ1TaRipmwY4jyGfesl/vS/qdDp3/L/Q9zVrWngJXFitztzezPm5dN+N/FejisRSPLSeZNmrRNWmyq11USy8iJ3HcqbmM5U8Q5LrWUY1Mz4PQk6NB2898fzP8AtXO/+xrT4Oq3Yp6jm6f077eGMBbTBm+ZIyngOS1Wlo6T1S5Md7fKt8sVsix1g/5X+HFO+zsl214kCEvg81u435Gr7Fv2kvGMnDXQOaaMFi30nh7DDgCMpzzVdWkqsdMi2lVlSlqjybX6xYk/1SOgaPRUKxorwaJdQrv7sGHFYupUINR7nRlJV8KUKf0LBnqValTeTyJCnJJ8orUscMgowvQHl8sE/cWF5BG4ZQIFt5BBLjks1hOQJ6CVFyx5GotvZf2IITTT4BprkhPIshKBFHvRjYa3GaRd/wBNg+GkwdC4bf8A5BU26TUpe5orv6V6IztoTmtGrYz5HgKIAgAQAFAHKqOkk81Q2WBTdeJzyWin9ImbqZkbjuO5RZFlwdw3cd46pCCwJAsTflKAAxYusckwLXMiI5oAh0Adq+5AGQggwrm9gRdPAGpzsuaoAlMCGtzufokAA3Nv3QBDoIInlZAEPm0fYTApMmN8J7JgJjhxT8YBD/aCCcrZ/RQa9QM2M2gIbcR3pNN7EkcqoTN5VeC1ImjVLTLT980A1k7GExofbJ3D6KxPJTKODq6Mxfs6gduyPRVV4aoNF1tV7c0/B6nG4mKLzPwGO8WXLhD9xI7VWf7bfseLXbPOggGCWWGATHuCBF6dNzrNaXHkCfkoynGPLwSjBy4WTTT0VXOVKp+kj5qqVzSXMkXRta0uIsjD6OqPqGk1vbEyCQIjOSideEYa29hQt6k56EtzqU9Ua5zLB3k+iyvqVJcJmxdKq+cIxYzQ76dZlEuaXO2biYG0SFdTuozpueHsUVLSUKipprLOwNT49+uB/jHmXLJ+pSe0Ym39KjH6pf4OfprRNGiwFlbbdtARLcoM5dFfbXNSpPEo4RnurWlSh8sss6Oi9C4f+HbXrbXulxuYibWCzVrmt3u3D8GuhaUOyqtT8mnAYPAV5bTbcCfjBjiJVdWpdUt5Mso0rOvtD/05OH0EDjDRJlje0TvLYBA63C1zu32NfngxQsU7ntPhbnV0pp0YV/saVFsACfhF+EZ9VkoWruFqnI23F6raWmETz2ndKDEOa4M2CGwd8meK6NrQdFNN5OXd3KryUksbHNK1mMo5yeAKmnPJDe2B8bj3ukknMx5CB5KEVpWEOUnJ5ZUpkRbsQwZuHiEZQ8MU7SFMfFPQFLUh6GJfpRu4E+CWskqbEv0mTbZgHndJyyPRgqq2BIPAhaaf0iZtYJ4QfFJkWXaZjhkQc1ERZh3ARBi/DkUARIAIHag5fRAF7zyhAFQQAMyMuPRACsS0zO5WQbzjwNCo6qzAja08oVAEOaDbgUAS+d0d6BA50bibpDIkC28oAo5hDYB7zdSXACC+HDwSnsx+DTUpA/f3KeRCS1zQd97cgm2BUuB2oN7Ak5JYYxVaiHTa8ZnJSynyNNoxVcPBAm5CHTg+CSkI2TwIVbpSRPUmdHB6R+F/j9VFSxyQcfJ6H/iH/Lupk37OyfyyDH3xVXZ/dUkXRrvsum+TA0rSzISgNz0Gr2ghVb7WqYpiYGW1GZJ3NXOu7yUJduHJ1LOxjUj3KnBuGnMFTOyyjIHxBjb+JkrMrW5mtTkafjLSD0qIzT2iaNSga9IAEN25aIDm5mRxhRtq84VdEyd3a0p0u5TI1Ep9iq78wHgJ9VPqbzNL2I9Ij8kn7nPxGtlfacAKYAJA7JmAbZuV1PptLSnuZ6nU6yk0sY/AzU6oX4mo91yWOJPMualfxUKKivUfTJupWlN+hXWCtiDiKjaZq7I2QA3aj3WzlbOUWsaCpKUsZ/2K8lXlWlGOcL0/Bh0Mx5xdMP2toPE7UzYTvWiu4KhLRw14M9qpu5jrzs/J6LWfQ9XEPZsbMNaQZMXJXOs7iFFPVydS/talacdHCyeU0rox9BwY8tJLdrsk5SRw5Lq29wqscxXBxri2dGajJ8ntaOCNTAspAgF1Nok9xXGlU0XLm98M70KXctFBbZRm0foxuCa+s4uqHZ3NyHIeF+SlWuJXMlBbFdG1jZxc8uR5zD6cc3EmuRO1ILfynIA8RAXSnaJ0VSXJy4XrVx3XweqpYrC4vskNLvwuEOHQ/QrlunXt9+DrxqW90sPdnl9ZNEjDvGySWPBInMEZid+YXUs7nux+blHH6hbKjL5eGcgraYvyZajqgya3xS3GkjK/E1uEdBPqUnqRNRiZamJqb3O+Si2yWEJc4nMz1uo5ZLCIQAIAEACANGHqbvBIi0PHRaKX0MgzUwjs7uCT8EWMOV+1BtGYSEXeM5NrZZhICTN44WKAJ353i4/ZAA02ECx7o7kABbmDkpcMRjNM81YM3B29VgDYzG9AABc3/ZIAE38kAV2t5EROfBICriM/xR+yaEYaw3TKjVJo6FB8tB+5UkRLpiFVaAcnkaZnqNIna92FIYMqTswOz8ksPwPAfw8h0u/ZLU8Cyeh1d1cpV6BLgHdsgOyNgN4XNu7lxqYR1bO3VSnlmPS2g3YaNl20xxPZdmI4OH0VltcOoUXduqRlYFtOeWSb2Gluj3OsX8rBBjbWYzusT8j4rhWv7lzl+56K8fatFFex4Zd3GUed43Pc4F2zo6T/AGqh8dqPmFwavzXTx6no6XyWW/oU1KAGHefznyAUuoPNVL2IdL2ot+MmM6bwTfdw5J47DB8zKtVrcvme35KXeWqe0M++xTUUTUqn8o8yfopdTeIRiyPSEtcmkM0lrVVZUexrGQ1xEmTl3pULCM4KTfJKv1KcJuKXBh0BXdVxrXuzO0TGXukfRX3UFSt9KM9lOVa6U2bNbMXWFcNpueBsAw2Ykl17dyosaVJ03KeM5L+o1ayqKMG0vY85ihUzqbcnIvmTHVdKm6e6h49Dl1O5lOed/U9hrH2cC1vKmPkfRce0WbnP5O5efLaJFdTMbt03UnGdnKfwOm3cfmE+oUtE1OPkj0yt3KbhLwc3DauB9StTL9ksd2RYy03BIzygLRK+lGMJKOcoyx6epTlFyxh7G7R2rjaDxVq1Wwy4+ETxJKprXsqsNEY8mijYRoT7kpcHG1l0mK9UbPuMEA8eJ++C22Vu6cPm5Zgv7pVp/LwjkLaYEBQBXYE9zvMbP/kozfBOBmdQM7vXvVqmJszHC3Nj98FJOOR6jP8Aw2eXcjEHyPUUFAkWB77JdmL4GpB/DmLkAqLoLA9QHDmYkSoSpNMeogUXTbMcFBxeQ1GqkSROW5W01iOxB8mprjbzKbyuSJZlwdmxneoc8AxgN3bI7VuhQIl0XkkiwIzhIC17wMhad6YEzeZtHnPFAFdke6TO/nmkBBrt5+CYEUH26Kc0A0nioCBrYEBAEQYzvGZQMkzbrfokBSr0tx5qSA59TOYhQrck0aMA/Md6UWRkjYrCIIACEDM9bDkxsmPVPLDInYAcZzO5SSQz3mpxAwrYsC55/wBxHouDeL91nesdqKMGt9WX028Gk+Jj0WqwjhNmPqcszS9jgLonLBJ8DXKPoGIptxmFAaQCQCN+y4Zg+YXnoydvW3R6acVd2+Ivc4WF1Rql38xzWt3wST3WAC3z6jDGILc51PpU005tJDtaNKs2Bh6RBAgOIuAG5NnfzVdlbylPuSJ391FQ7MDRoHFU6eCdL2hx9oYJEzcARxsFXdQlK42WVsW2c4QtcN77njgu1g4PJ3dWNLU6HtNval0RAnKVz763nVktJ0+n3MKKerlnIxlbbqPf+JxPiVtpRcIKL8GGrNTquS8j9D4/2FUVNnagERMZqu4o96GlPBO1rqjPVg7b9cnbqLR1cT6BYo9M9ZHQfVn4ijjaX0s/EFpeANkEACd+efRa6FrGimk+TDcXcq7TkuAx2l61VoY90tEGAALiwyClStqdOWqK3FVu6tWOiT2MtDEOYZY4tOUgxZWzpxmsSWSqFSUHmLwVdVcTtFxLuMmfFCpxSxjYWuWdWdyH1CcyT1JKahFcIHOT5ZVSIAgAQMiDc7vd8b+gUNScsDx8uoqzeYj73poGVGU+997k+EIj2XZsA0+MJ5xwMpVotgBx/dGoEVfRbIBEndyQ5hkkUxtZXAzRr3AhmzDjEceaNYEPpt2LW3gJJpvAFGnf5Kxppv0AY0gxNt8KPIhjbwDY5wOSiBcO+LL8XokBHiYv4zbmgCwaMosbnqgCZNjF/kgCyAMtN0HyV0uANLlUIh8RfJAA+N/EIGBzF+PegBdXff8Aa25SiIwP9FXV3ZYiaVTZMqtDwbW4xh+Id9vmrsog0xragORB6EFGRYZZMQIAhzZQB3tC6YaxgpvEAZOF8zNx35rnXNs23JHUtbyMYqEtjBrFiA+tIIIDWgEd59Vos4NU3kz301KqmvQwArSYyUBgdhsU+ndj3N6EjyVc6UJ/UsltOtOn9LwNr6SrPEOqvI4bRjyUY29KLyoolK5qyWJSZkVxT+QRjHAvGAQHgEAwQAI2DcEBkEBkEACWQCUZAgOHXpdLXFeSSi34HU8NUd7tN5/wdHjCg69NcssVCo+EaqehsQ7Kke8tHzKqd5SXktjZVn4NuG1VruPaLGDjdx8IA81nqdQguEaKfS6kuXgVrPhWUTTossGsLiTmXONyTx7KdlKUoymyN/CNOcYLjBxHGBkXecroM5xLwYsYS5ArVaDAJ/dDxwMlzhtARfpkjYAa87REWG9HkZDahgkt6c0JiIdVgCW3O5LIEu2S6N4/ZNYYGR4gmFYtSTYy4MzGeUoe4DGmbjMWk+aiIY2JsJ2hnutkogSDlJ5d/wBhAEt3XOZHXPPwQBBiDc9eHRADEAZHhXcoDS10iVW9gJv3pCAzHNAAUgKVVOII59XPuCrqcliMuIfu8VWiaQhMmCMiwXbWcMnEd5RliwhzcfUHxeMFNSYaENbpR+8A+IT1MjoQ5ulRvae4p6yOhMYNI0zxHd9E1JC0NodSrNORnuKllEcD0CBAwQIEBkEZACUsjIDhuv0uk5xXkeiXoNbh3nJjz/iR81B1oLyTVGb8DWaOrH+nHUtHrKg7qCJq1qPwOZoeqc9kd5Poq3eLwiyNnN+R7NBO31B3N+pVbvX6FqsfVminoBu9zz4D0VbvJ+CxWUfJpp6CpfhJ6ucfVVO6qPyXRtKa8GylomkMqTP0g+ZVTrTfkujQgvBtpUAMgB0Crc8lygvCNDaahktUUhzWKDZNDmBR3J6cLJ851nxTamIeZlshreeyI+crvWkNFJJ+TzN9U11ng5ziZEARvWt5MgOZJBk23JcsCAWl3MeXejYCadSZtHqhMCrXO2SYE7ghNgQ4ugWBO/gEb7BsW2ztRFoklDYYIaWuBI6TkjZgZ8RS2YjJSg2n7DW5Rp3/AGVY/UB4NxztHNQYi4yvaDu8kgL+Av8ASUgJ79/2EgCee/7AQImUAZ3BW5GmXw53JSQDclAQeKACNyAKlCBHMxlSOdlXPktiYElkmWDDwKlpkwyQ5pAlSVKQaidg25qXYaFqLexOW/cpdlC1D6eE4p9qK5Fqfg9HqtQwr3GnUY3bmxdkeV7T9VzrzVHePBus3Tl8suWesxuq9J7Ia1tNwu0taB4gZhc+neShLPJ0a1lCpH0Z52tq9iGmBSLubS0jzIK6Ub6k0cifT66fBanq7iT/AEw3/U5vpKi7+khx6dXfhGhmqtbe6m39TvQKD6ivCLV0yXl4Hs1UPxVT/i36kqt9QfhFq6bHzIczVemM3VHdSB8mhVu9qE1YU1yxzdX6I+CepcfVQdzUfkmrSkvAxujKbcqbB/iPol3JvyTVGC8F/ZgbwO8JZkPTBFSGb3N8Qj5vQPl9UV9pT/uM/UPqjDfgMx9UT7el/cZ+oJ6J/wAWLXT9UH8XR/u0/wBQR26niLDuUvMkWGkMP/ep/qCOzVf2sl36P8kSNK4f+8zxR2Kv8WHxNH+SLf8AGcN/db5/RL4er/EfxVH+QO1gwouao/S/6JfDVv4h8bRX3FhrFhv7n+130R8JW9B/H0P5EO1oww+Jx6Md9EfBV/QP1Gh/I5OmdaS9uxRBaDYuPvR+UbupWqh0/DzUMVx1NyjimsHmNoTG+OC6e3COR7smDPJNAioaJLt+/kjyANqSCQD9UkwAl2zkNrgjLwAP2rRHNMAl21+VLLGVFa0uBF+9GRYLPpAgDIZ2RgClSTIO8nZ7k4vcDIwq7h+xIcw87qHsRGtOcZxn8lFgM42nLokBb78vmkIgHmgCuxN+z4IAq4KwEVYbqT4GzQFUIhAAAgZJCBGSpSBNwCTPkp4Hkh1OMuSkth5KGl81LIFDTAE8SPRDkNDG0RPchvcC9KgJPI25KvVuxSLeyDpGUGx7lXnIx+yOCCLHUtK1mhzW1HtDcu0Yy4KjtU5PeKLo3FVLEZNC36bxBYHe2fM/iKSo08fSiXxFVv6mFbSdaW/zX3/MfqpOlTX2oO7U/kyp0hV29n2j8p9531Uu3Tz9KIdypj6mT/EPMy936ipKnDPBB1Z+pQzEbTvEqfbihdyTKAWvdCQZIdRBjdvTDJJaLdUCD2QmfJAZLBgTEQ1lyogSKYFgmNktE3QIG3QMgtgWtwSF5L7KYyHNmLnNLyAbV4QAbF5k+iALA58kCK0gd5m6SGAaGiwTwIriKuyBzKTYyHvO2AMv/aTe4LgGVCXOG4IUtwfBVlc7BcfvJNPYHyOzF08bB5F1Rs7T8zCTWBln+7O+M+EwgSMdVsOIV64GWbwSYDmjwjJQYho4dPVRYEz5n0SESAmBKAP/2Q==",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.w),
                    child: Wrap(
                      spacing: 20.w,
                      runSpacing: 20.w,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.center,
                      children: [
                        "https://cdn.pixabay.com/photo/2021/08/24/15/00/pubg-mobile-6570917_960_720.jpg",
                        "https://media.istockphoto.com/id/1249110335/vector/vector-illustration-fire-colorful-style.jpg?s=2048x2048&w=is&k=20&c=8eknrY62zD35SbtpIEH76uQyZcmmykHFDXwVPLWczcw=",
                        "https://media.istockphoto.com/id/1335658414/vector/ace-card-black-vector-icon-design.jpg?s=2048x2048&w=is&k=20&c=KJwnXxoIYa33o97dIrEu5Iss30JcG4wXMM9_9zb2Zq8=",
                        "https://cdn.pixabay.com/photo/2021/08/24/15/00/pubg-mobile-6570917_960_720.jpg",
                        "https://media.istockphoto.com/id/1249110335/vector/vector-illustration-fire-colorful-style.jpg?s=2048x2048&w=is&k=20&c=8eknrY62zD35SbtpIEH76uQyZcmmykHFDXwVPLWczcw=",
                        "https://cdn.pixabay.com/photo/2021/08/24/15/00/pubg-mobile-6570917_960_720.jpg",
                        "https://media.istockphoto.com/id/1249110335/vector/vector-illustration-fire-colorful-style.jpg?s=2048x2048&w=is&k=20&c=8eknrY62zD35SbtpIEH76uQyZcmmykHFDXwVPLWczcw=",
                        "https://media.istockphoto.com/id/1335658414/vector/ace-card-black-vector-icon-design.jpg?s=2048x2048&w=is&k=20&c=KJwnXxoIYa33o97dIrEu5Iss30JcG4wXMM9_9zb2Zq8=",
                        "https://cdn.pixabay.com/photo/2021/08/24/15/00/pubg-mobile-6570917_960_720.jpg",
                        "https://media.istockphoto.com/id/1249110335/vector/vector-illustration-fire-colorful-style.jpg?s=2048x2048&w=is&k=20&c=8eknrY62zD35SbtpIEH76uQyZcmmykHFDXwVPLWczcw=",
                        "https://media.istockphoto.com/id/1335658414/vector/ace-card-black-vector-icon-design.jpg?s=2048x2048&w=is&k=20&c=KJwnXxoIYa33o97dIrEu5Iss30JcG4wXMM9_9zb2Zq8=",
                      ].map((e) => CustomHomeContainer(imageUrl: e)).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  ],
);
