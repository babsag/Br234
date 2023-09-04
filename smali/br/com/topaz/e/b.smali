.class public Lbr/com/topaz/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/e/b;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/e/b;->b:I

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/e/b;->a:Ljava/lang/Long;

    return-void
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/e/b;->a:Ljava/lang/Long;

    return-object v0
.end method
