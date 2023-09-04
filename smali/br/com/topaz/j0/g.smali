.class public Lbr/com/topaz/j0/g;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/j0/c;

.field private d:Lbr/com/topaz/k0/a;

.field private e:[I


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/j0/c;Lbr/com/topaz/k0/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lbr/com/topaz/j0/g;->e:[I

    iput-object p2, p0, Lbr/com/topaz/j0/g;->b:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/j0/g;->c:Lbr/com/topaz/j0/c;

    iput-object p4, p0, Lbr/com/topaz/j0/g;->d:Lbr/com/topaz/k0/a;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0xa
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/j0/g;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->O()Lbr/com/topaz/j0/f;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/j0/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/j0/g;->e:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v7, v1, v3

    iget-object v4, p0, Lbr/com/topaz/j0/g;->c:Lbr/com/topaz/j0/c;

    const-string v5, "login"

    new-instance v6, Lbr/com/topaz/j0/d;

    iget-object v8, p0, Lbr/com/topaz/j0/g;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v8}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v8

    iget-object v9, p0, Lbr/com/topaz/j0/g;->c:Lbr/com/topaz/j0/c;

    iget-object v10, p0, Lbr/com/topaz/j0/g;->d:Lbr/com/topaz/k0/a;

    invoke-direct {v6, v8, v9, v10}, Lbr/com/topaz/j0/d;-><init>(Lbr/com/topaz/l/g;Lbr/com/topaz/j0/c;Lbr/com/topaz/k0/a;)V

    invoke-virtual {v0}, Lbr/com/topaz/j0/f;->a()I

    move-result v8

    invoke-virtual {v0}, Lbr/com/topaz/j0/f;->b()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lbr/com/topaz/j0/c;->a(Ljava/lang/String;Landroid/hardware/SensorEventListener;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v2, p0, Lbr/com/topaz/j0/g;->b:Lbr/com/topaz/l/f0;

    invoke-direct {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    const-string v2, "100"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
