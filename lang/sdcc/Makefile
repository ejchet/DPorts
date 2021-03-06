# $FreeBSD: lang/sdcc/Makefile 319531 2013-05-31 16:15:51Z tijl $

PORTNAME=	sdcc
PORTVERSION=	3.3.0
DISTVERSIONPREFIX=	src-
CATEGORIES=	lang
MASTER_SITES=	SF

MAINTAINER=	tijl@FreeBSD.org
COMMENT=	Small Device C Compiler

LICENSE=	GPLv3

BUILD_DEPENDS=	${LOCALBASE}/include/boost/graph/adjacency_list.hpp:${PORTSDIR}/devel/boost-libs

CONFLICTS_INSTALL=	sdcc-[0-9]*
GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes

OPTIONS_DEFINE= 	DEVLIB DOCS UCSIM
OPTIONS_MULTI=		TARGETS
OPTIONS_MULTI_TARGETS=	HC08 MCS51 PIC Z80
OPTIONS_DEFAULT=	DEVLIB UCSIM HC08 MCS51 PIC Z80
DEVLIB_DESC=	Device libraries
HC08_DESC=	Freescale 68HC08/S08
MCS51_DESC=	Intel MCS51, Maxim DS80C390/DS80C400
PIC_DESC=	Microchip PIC
UCSIM_DESC=	The ucSim simulator
Z80_DESC=	Zilog Z80/Z180/GBZ80, Rabbit 2000/3000/3000A

CPPFLAGS+=	-idirafter ${LOCALBASE}/include
CONFIGURE_ARGS= --disable-avr --disable-install-libbfd --disable-werror \
		--enable-new-pics docdir=${DOCSDIR}
CONFIGURE_ENV=	ARCH=""
PLIST_FILES=	bin/as2gbmap bin/makebin bin/packihx bin/sdar bin/sdcc	\
		bin/sdcclib bin/sdcpp bin/sdld bin/sdld6808 bin/sdldgb	\
		bin/sdldz80 bin/sdnm bin/sdobjcopy bin/sdranlib
PORTDATA=	*
PORTDOCS=	*
WRKSRC= 	${WRKDIR}/sdcc-${DISTVERSION}

.include <bsd.port.pre.mk>

.if ${ARCH} == "x86_64"
CONFIGURE_TARGET=	x86_64-portbld-freebsd${OSREL}
.endif

.if empty(PORT_OPTIONS:MDEVLIB)
CONFIGURE_ARGS+=--disable-device-lib
.endif

.if ${PORT_OPTIONS:MHC08}
PLIST_FILES+=	bin/sdas6808 %%UCSIM%%bin/shc08
.else
CONFIGURE_ARGS+=--disable-hc08 --disable-hc08-port --disable-s08-port
.endif

.if ${PORT_OPTIONS:MMCS51}
PLIST_FILES+=	bin/sdas390 bin/sdas8051 %%UCSIM%%bin/s51		\
		%%UCSIM%%bin/sdcdb %%UCSIM%%bin/sdcdb.el		\
		%%UCSIM%%bin/sdcdbsrc.el
.else
CONFIGURE_ARGS+=--disable-51 --disable-mcs51-port \
		--disable-ds390-port --disable-ds400-port
.endif

.if ${PORT_OPTIONS:MPIC}
BUILD_DEPENDS+= gputils>=1.0.0:${PORTSDIR}/devel/gputils
RUN_DEPENDS+=	gpasm:${PORTSDIR}/devel/gputils
.else
CONFIGURE_ARGS+=--disable-pic14-port --disable-pic16-port
.endif

.if ${PORT_OPTIONS:MUCSIM}
PLIST_SUB+=	UCSIM=""
.else
CONFIGURE_ARGS+=--disable-ucsim
PLIST_SUB+=	UCSIM="@comment "
.endif

.if ${PORT_OPTIONS:MZ80}
PLIST_FILES+=	bin/sdasgb bin/sdasrab bin/sdasz80 %%UCSIM%%bin/sz80
.else
CONFIGURE_ARGS+=--disable-z80 --disable-z80-port --disable-z180-port \
		--disable-gbz80-port --disable-r2k-port --disable-r3ka-port
.endif

post-patch:
	@${REINPLACE_CMD} '/install:/s/:.*/:/' \
		${WRKSRC}/Makefile.in \
		${WRKSRC}/support/sdbinutils/libiberty/Makefile.in
.if empty(PORT_OPTIONS:MDOCS)
	@${REINPLACE_CMD} 's, [a-z-]*doc,,' \
		${WRKSRC}/Makefile.in \
		${WRKSRC}/sim/ucsim/packages_in.mk
.endif

post-install:
	${FIND} -d ${DATADIR} -type d -empty -delete

.include <bsd.port.post.mk>
