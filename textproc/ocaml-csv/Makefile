# New ports collection makefile for:	ocaml-calendar
# Date created:				Feb 26, 2007
# Whom:					Jaap Boender <jaapb@kerguelen.org>
#
# $FreeBSD: ports/textproc/ocaml-csv/Makefile,v 1.7 2012/11/17 06:02:03 svnexp Exp $
#

PORTNAME=	ocaml-csv
PORTVERSION=	1.2.1
PORTREVISION=	2
CATEGORIES=	textproc
MASTER_SITES=	https://forge.ocamlcore.org/frs/download.php/420/

MAINTAINER=	tcrimi@gmail.com
COMMENT=	An OCaml library to read and write CSV files

BUILD_DEPENDS=	${LOCALBASE}/${OCAML_SITELIBDIR}/extlib:${PORTSDIR}/devel/ocaml-extlib

WRKSRC=		${WRKDIR}/csv-${PORTVERSION}
USE_GMAKE=	yes
MAKE_ARGS=	byte native
USE_OCAML=	yes
USE_OCAML_FINDLIB=	yes
OCAML_PKGDIRS=	csv

.include <bsd.port.mk>
