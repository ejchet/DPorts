# Created by: Thomas Gellekum <tg@FreeBSD.org>
# $FreeBSD: science/netcdf/Makefile 316757 2013-04-28 22:08:22Z bapt $

PORTNAME=	netcdf
PORTVERSION=	3.6.3
PORTREVISION=	4
CATEGORIES=	science
MASTER_SITES=	http://www.unidata.ucar.edu/downloads/netcdf/ftp/ \
		ftp://ftp.unidata.ucar.edu/pub/netcdf/ \
		LOCAL/sunpoet

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT?=	Library for machine-independent, array-oriented data access

CONFLICTS=	hdf-4.* netcdf-4.*
PORTSCOUT=	limit:^3\.

CONFIGURE_ARGS=	--enable-shared
CPPFLAGS+=	-I${LOCALBASE}/include -fPIC -DPIC
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

INFO=		netcdf netcdf-c netcdf-cxx netcdf-f77 netcdf-f90 \
		netcdf-install netcdf-tutorial
MAN1=		ncdump.1 ncgen.1
MAN3=		netcdf.3

OPTIONS_DEFINE=	FORTRAN DOCS
FORTRAN_DESC=	Build library for Fortran

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
CONFIGURE_ARGS+=--enable-docs-install
.else
CONFIGURE_ARGS+=--disable-docs-install
.endif

.if ${PORT_OPTIONS:MFORTRAN}
CPPFLAGS+=	-DpgiFortran
CONFLICTS+=	netcdf-3.*
MAN3+=		netcdf_f77.3 netcdf_f90.3
PKGNAMESUFFIX+=	-ftn
PLIST_SUB+=	FORTRAN=""
USE_FORTRAN=	yes
.else
CONFIGURE_ARGS+=--disable-f77 --disable-f90
CONFLICTS+=	netcdf-ftn-3.*
PLIST_SUB+=	FORTRAN="@comment "
.endif

post-patch:
	@${REINPLACE_CMD} -e \
		'291 s/\(html_docs)\).*/\1/' \
		${WRKSRC}/man/Makefile.in
	@${REINPLACE_CMD} -e \
		'271 s/\(info_docs\).*/html_docs\)/' \
		${WRKSRC}/man4/Makefile.in
.if ! ${PORT_OPTIONS:MDOCS}
	@${REINPLACE_CMD} -e '790 s/install-docDATA //' \
		${WRKSRC}/man/Makefile.in
.endif

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} check

.include <bsd.port.mk>
