.class public Lbr/com/topaz/heartbeat/face/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/heartbeat/face/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field final synthetic h:Lbr/com/topaz/heartbeat/face/d;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/face/d;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/d$a;->h:Lbr/com/topaz/heartbeat/face/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/d$a;->d:I

    return v0
.end method

.method public a(I)Lbr/com/topaz/heartbeat/face/d$a;
    .locals 0

    iput p1, p0, Lbr/com/topaz/heartbeat/face/d$a;->d:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/d$a;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/d$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lbr/com/topaz/heartbeat/face/d$a;
    .locals 0

    iput-boolean p1, p0, Lbr/com/topaz/heartbeat/face/d$a;->f:Z

    return-object p0
.end method

.method public b(I)Lbr/com/topaz/heartbeat/face/d$a;
    .locals 0

    iput p1, p0, Lbr/com/topaz/heartbeat/face/d$a;->g:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/d$a;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/d$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/d$a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c(I)Lbr/com/topaz/heartbeat/face/d$a;
    .locals 0

    iput p1, p0, Lbr/com/topaz/heartbeat/face/d$a;->e:I

    return-object p0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/d$a;->g:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/d$a;->e:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/d$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/d$a;->f:Z

    return v0
.end method
