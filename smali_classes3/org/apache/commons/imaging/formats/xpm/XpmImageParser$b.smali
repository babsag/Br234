.class Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;
.super Ljava/lang/Object;
.source "XpmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:I

.field d:Z

.field e:I

.field f:Z

.field g:I

.field h:Z

.field i:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->b:Z

    .line 3
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->d:Z

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->f:Z

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$a;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->c:I

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->d:Z

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->e:I

    return v0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->f:Z

    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->g:I

    return v0

    .line 7
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->h:Z

    if-eqz v0, :cond_3

    .line 8
    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->i:I

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
