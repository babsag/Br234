.class public Lbr/com/topaz/z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/z/b;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/z/b;->e:Z

    iput v0, p0, Lbr/com/topaz/z/b;->f:I

    iput v0, p0, Lbr/com/topaz/z/b;->g:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/z/b;->h:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/z/b;->g:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lbr/com/topaz/z/b;->h:J

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/z/b;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/z/b;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lbr/com/topaz/z/b;->e:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/b;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/z/b;->f:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/z/b;->a:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/z/b;->f:I

    return v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/z/b;->d:Ljava/util/Map;

    return-object v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/z/b;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/z/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/z/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/z/b;->e:Z

    return v0
.end method
