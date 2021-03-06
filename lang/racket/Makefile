# Created by: Joseph Koshy <jkoshy@FreeBSD.org>
# $FreeBSD: lang/racket/Makefile 316662 2013-04-27 11:59:28Z mva $

PORTNAME=	racket
PORTVERSION=	5.3.1
CATEGORIES=	lang scheme
MASTER_SITES=	http://download.racket-lang.org/installers/${PORTVERSION}/${PORTNAME}/ \
		http://www.eecs.northwestern.edu/racket/${PORTVERSION}/${PORTNAME}/ \
		http://www.cs.utah.edu/plt/installers/${PORTVERSION}/${PORTNAME}/ \
		http://mirror.informatik.uni-tuebingen.de/mirror/racket/${PORTVERSION}/${PORTNAME}/ \
		ftp://infogroep.be/pub/racket/installers/${PORTVERSION}/${PORTNAME}/ \
		http://russell.cs.bilgi.edu.tr/racket-installers/${PORTVERSION}/${PORTNAME}/
DISTNAME=	${PORTNAME}-${PORTVERSION}-src-unix
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${PORTNAME}/${PORTVERSION}

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	An interactive, integrated, graphical Scheme programming environment

MAKE_JOBS_UNSAFE=yes

OPTIONS_DEFINE=		RACKET_PLACES
RACKET_PLACES_DESC=	Enable Places
OPTIONS_DEFAULT=	RACKET_PLACES

CONFLICTS=	racket-textual-[0-9]*

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared --enable-pthread \
		--enable-lt=${LIBTOOL}
CONFIGURE_SCRIPT=../configure

.include <bsd.port.options.mk>

.if defined(WITHOUT_X11)
IGNORE=		requires X11; use lang/racket-textual instead
.endif

USE_GNOME=	pango

LIB_DEPENDS+=	ffi:${PORTSDIR}/devel/libffi		\
		cairo:${PORTSDIR}/graphics/cairo	\
		jpeg:${PORTSDIR}/graphics/jpeg	\
		png15:${PORTSDIR}/graphics/png

.if ${PORT_OPTIONS:MRACKET_PLACES}
CONFIGURE_ARGS+=	--enable-places
.else
CONFIGURE_ARGS+=	--disable-places
.endif

# Force the "configure" script to look in $LOCALBASE for -lpng and -ljpeg
LDFLAGS+=	-L${LOCALBASE}/lib
CPPFLAGS+=	-I${LOCALBASE}/include

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}/src/build
USES+=		iconv
USE_LDCONFIG=	yes
USE_AUTOTOOLS=	libtool:env

MAN1=		drracket.1 gracket.1 mred.1 mzc.1 mzscheme.1 plt-help.1 \
		racket.1 raco.1 setup-plt.1

ONLY_FOR_ARCHS=	i386 amd64

PLIST_SUB+=	ARCH=${ARCH}

.include <bsd.port.pre.mk>

.if ${ARCH} == "x86_64"
CPPFLAGS+=	-DLONG64
.endif

pre-patch:
	@${MKDIR} ${WRKSRC}

post-patch:
	@${FIND} ${WRKDIR} -name *.orig -delete

.include <bsd.port.post.mk>
