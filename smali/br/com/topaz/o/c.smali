.class public Lbr/com/topaz/o/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lbr/com/topaz/o/e;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lbr/com/topaz/o/g;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o/c;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o/c;->d:I

    return-void
.end method

.method public a(Lbr/com/topaz/o/e;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/o/c;->b:Lbr/com/topaz/o/e;

    return-void
.end method

.method public a(Lbr/com/topaz/o/g;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/o/c;->f:Lbr/com/topaz/o/g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/o/c;->a:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o/c;->e:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o/c;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/o/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/o/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o/c;->g:I

    return-void
.end method

.method public d()Lbr/com/topaz/o/e;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/o/c;->b:Lbr/com/topaz/o/e;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o/c;->g:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/o/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lbr/com/topaz/o/g;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/o/c;->f:Lbr/com/topaz/o/g;

    return-object v0
.end method
