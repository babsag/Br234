.class public Lbr/com/topaz/heartbeat/face/FaceStructure$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/heartbeat/face/FaceStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field final synthetic h:Lbr/com/topaz/heartbeat/face/FaceStructure;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/face/FaceStructure;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->h:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->b:I

    return v0
.end method

.method public a(I)Lbr/com/topaz/heartbeat/face/FaceStructure$a;
    .locals 0

    iput p1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/FaceStructure$a;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lbr/com/topaz/heartbeat/face/FaceStructure$a;
    .locals 0

    iput-boolean p1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->g:Z

    return-object p0
.end method

.method public b(I)Lbr/com/topaz/heartbeat/face/FaceStructure$a;
    .locals 0

    iput p1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->a:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/FaceStructure$a;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lbr/com/topaz/heartbeat/face/FaceStructure$a;
    .locals 0

    iput-boolean p1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->e:Z

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->a:I

    return v0
.end method

.method public c(I)Lbr/com/topaz/heartbeat/face/FaceStructure$a;
    .locals 0

    iput p1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->d:I

    return-object p0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->e:Z

    return v0
.end method
