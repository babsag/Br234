.class Lorg/apache/commons/imaging/palette/e;
.super Ljava/lang/Object;
.source "ColorGroupCut.java"


# instance fields
.field public final a:Lorg/apache/commons/imaging/palette/d;

.field public final b:Lorg/apache/commons/imaging/palette/d;

.field public final c:Lorg/apache/commons/imaging/palette/b;

.field public final d:I


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/e;->a:Lorg/apache/commons/imaging/palette/d;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/imaging/palette/e;->b:Lorg/apache/commons/imaging/palette/d;

    .line 4
    iput-object p3, p0, Lorg/apache/commons/imaging/palette/e;->c:Lorg/apache/commons/imaging/palette/b;

    .line 5
    iput p4, p0, Lorg/apache/commons/imaging/palette/e;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lorg/apache/commons/imaging/palette/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/e;->c:Lorg/apache/commons/imaging/palette/b;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/palette/b;->a(I)I

    move-result p1

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/palette/e;->d:I

    if-gt p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lorg/apache/commons/imaging/palette/e;->a:Lorg/apache/commons/imaging/palette/d;

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/imaging/palette/e;->b:Lorg/apache/commons/imaging/palette/d;

    return-object p1
.end method
