.class public Lbr/com/topaz/j/c;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Lbr/com/topaz/j/b;

.field private c:Lbr/com/topaz/l/e0;

.field private d:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private e:Lbr/com/topaz/u0/d;

.field private f:Lbr/com/topaz/l/f0;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/j/b;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/j/c;->b:Lbr/com/topaz/j/b;

    iput-object p4, p0, Lbr/com/topaz/j/c;->c:Lbr/com/topaz/l/e0;

    iput-object p5, p0, Lbr/com/topaz/j/c;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p6, p0, Lbr/com/topaz/j/c;->e:Lbr/com/topaz/u0/d;

    iput-object p3, p0, Lbr/com/topaz/j/c;->f:Lbr/com/topaz/l/f0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/j/c;->f:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->h()Lbr/com/topaz/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/j/d;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/j/c;->b:Lbr/com/topaz/j/b;

    iget-object v2, p0, Lbr/com/topaz/j/c;->c:Lbr/com/topaz/l/e0;

    invoke-interface {v2}, Lbr/com/topaz/l/e0;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/j/b;->a(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lbr/com/topaz/j/c;->e:Lbr/com/topaz/u0/d;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lbr/com/topaz/u0/d;->a(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Lbr/com/topaz/j/c;->e:Lbr/com/topaz/u0/d;

    invoke-virtual {v4, v3}, Lbr/com/topaz/u0/d;->a(Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    :cond_0
    iget-object v4, p0, Lbr/com/topaz/j/c;->b:Lbr/com/topaz/j/b;

    invoke-virtual {v4, v3, v2}, Lbr/com/topaz/j/b;->a(Ljava/util/Calendar;I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lbr/com/topaz/j/c;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v5, "022"

    invoke-virtual {v4, v3, v5}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/j/c;->c:Lbr/com/topaz/l/e0;

    invoke-interface {v0, v1}, Lbr/com/topaz/l/e0;->a(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    iget-object v1, p0, Lbr/com/topaz/j/c;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "020"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
