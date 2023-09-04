.class public Lbr/com/topaz/heartbeat/face/FaceStructure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/face/FaceStructure$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/face/FaceStructure$a;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbr/com/topaz/l/w;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:I

.field private F:Lbr/com/topaz/q0/e;

.field private G:I

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:J

.field private O:I

.field private P:I

.field private Q:Z

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:D

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->q:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->Q:Z

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->I:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->D:Z

    return v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->J:Z

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->M:Z

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->K:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->L:Z

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->y:Z

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/heartbeat/face/FaceStructure;
    .locals 10

    const-string v0, "mid"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "e"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->a:Z

    :goto_0
    :try_start_1
    const-string v3, "fbai"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->b:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->b:Ljava/lang/String;

    :goto_1
    :try_start_2
    const-string v3, "fbak"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->c:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->c:Ljava/lang/String;

    :goto_2
    :try_start_3
    const-string v3, "fbpi"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->d:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->d:Ljava/lang/String;

    :goto_3
    :try_start_4
    const-string v3, "fbdbu"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->e:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->e:Ljava/lang/String;

    :goto_4
    :try_start_5
    const-string v3, "fbgsi"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->f:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->f:Ljava/lang/String;

    :goto_5
    :try_start_6
    const-string v3, "fbsb"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->g:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->g:Ljava/lang/String;

    :goto_6
    :try_start_7
    const-string v3, "fbn"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->h:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->h:Ljava/lang/String;

    :goto_7
    :try_start_8
    const-string v3, "fbmfs"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->i:D
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->i:D

    :goto_8
    :try_start_9
    const-string v3, "fbmt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->j:I
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->j:I

    :goto_9
    :try_start_a
    const-string v3, "fbct"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->k:I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->k:I

    :goto_a
    :try_start_b
    const-string v3, "fblt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->l:I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->l:I

    :goto_b
    :try_start_c
    const-string v3, "fbte"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->m:Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->m:Z

    :goto_c
    :try_start_d
    const-string v3, "fbif"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->n:I
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->n:I

    :goto_d
    :try_start_e
    const-string v3, "lvi"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->o:Ljava/util/List;

    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->o:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_e

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :catch_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->o:Ljava/util/List;

    :cond_0
    :try_start_f
    const-string v3, "lvin"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->p:I
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->p:I

    :goto_f
    :try_start_10
    const-string v3, "lvir"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->q:Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->q:Z

    :goto_10
    :try_start_11
    const-string v3, "lvicf"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->r:I
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->r:I

    :goto_11
    :try_start_12
    const-string v3, "lvnf"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->s:I
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->s:I

    :goto_12
    :try_start_13
    const-string v3, "fre"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->t:Z
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->t:Z

    :goto_13
    :try_start_14
    const-string v3, "pk"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->u:Ljava/lang/String;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->u:Ljava/lang/String;

    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->t:Z

    :goto_14
    :try_start_15
    const-string v3, "u"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->v:Ljava/lang/String;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->v:Ljava/lang/String;

    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->t:Z

    :goto_15
    :try_start_16
    const-string v3, "pki"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->w:Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    iput-object v1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->w:Ljava/lang/String;

    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->t:Z

    :goto_16
    const-string v3, "bu"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->x:Ljava/lang/String;

    const-string v3, "wmen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->y:Z

    const-string v3, "wmql"

    const/16 v4, 0x50

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->z:I

    const/16 v3, 0x1e0

    const-string v5, "wmrw"

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->A:I

    :try_start_17
    const-string v3, "wmmks"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->B:Ljava/util/List;

    const/4 v5, 0x0

    :goto_17
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lbr/com/topaz/heartbeat/face/FaceStructure$a;

    invoke-direct {v7, p0}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;-><init>(Lbr/com/topaz/heartbeat/face/FaceStructure;)V

    const-string v8, "mal"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->a(I)Lbr/com/topaz/heartbeat/face/FaceStructure$a;

    move-result-object v7

    const-string v8, "mcl"

    const-string v9, "black"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->a(Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/FaceStructure$a;

    move-result-object v7

    const-string v8, "mpo"

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->b(I)Lbr/com/topaz/heartbeat/face/FaceStructure$a;

    move-result-object v7

    const-string v8, "msz"

    const/16 v9, 0x28

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->c(I)Lbr/com/topaz/heartbeat/face/FaceStructure$a;

    move-result-object v7

    const-string v8, "mul"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->b(Z)Lbr/com/topaz/heartbeat/face/FaceStructure$a;

    move-result-object v7

    const-string v8, "mtx"

    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->b(Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/FaceStructure$a;

    move-result-object v7

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v7, v6}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->a(Z)Lbr/com/topaz/heartbeat/face/FaceStructure$a;

    move-result-object v6

    invoke-virtual {v6}, Lbr/com/topaz/heartbeat/face/FaceStructure$a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->B:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_17

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :catch_17
    :cond_2
    :try_start_18
    const-string v3, "wmmtd"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->C:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lbr/com/topaz/l/w;

    invoke-direct {v6}, Lbr/com/topaz/l/w;-><init>()V

    const-string v7, "k"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbr/com/topaz/l/w;->a(Ljava/lang/String;)Lbr/com/topaz/l/w;

    move-result-object v6

    const-string v7, "v"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbr/com/topaz/l/w;->b(Ljava/lang/String;)Lbr/com/topaz/l/w;

    move-result-object v6

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v6, v5}, Lbr/com/topaz/l/w;->a(Z)Lbr/com/topaz/l/w;

    move-result-object v5

    invoke-virtual {v5}, Lbr/com/topaz/l/w;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lbr/com/topaz/l/w;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->C:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_18

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :catch_18
    :cond_4
    :try_start_19
    const-string v0, "tre"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->D:Z
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->D:Z

    :goto_19
    :try_start_1a
    const-string v0, "trq"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->E:I
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->E:I

    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->D:Z

    :goto_1a
    :try_start_1b
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->I:Z
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->I:Z

    :goto_1b
    :try_start_1c
    new-instance v0, Lbr/com/topaz/q0/e;

    invoke-direct {v0}, Lbr/com/topaz/q0/e;-><init>()V

    const-string v1, "t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/q0/e;->a(Lorg/json/JSONObject;)Lbr/com/topaz/q0/e;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->F:Lbr/com/topaz/q0/e;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    new-instance v0, Lbr/com/topaz/q0/e;

    invoke-direct {v0}, Lbr/com/topaz/q0/e;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->F:Lbr/com/topaz/q0/e;

    :goto_1c
    :try_start_1d
    const-string v0, "imh"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->G:I
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->G:I

    :goto_1d
    :try_start_1e
    const-string v0, "imw"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->H:I
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->H:I

    :goto_1e
    const-string v0, "nfd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->N:J

    const-string v0, "vfe"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->J:Z

    const-string v0, "vftc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->K:Z

    const-string v0, "vftf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->L:Z

    const-string v0, "vfim"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->M:Z

    const-string v0, "miffp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->O:I

    const-string v0, "maffp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->P:I

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->x:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PASSIVE_FACE_LIVENESS"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->o:Ljava/util/List;

    const/4 v2, 0x0

    iput v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->p:I

    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->q:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->Q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "OFDHB:192"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()Lbr/com/topaz/q0/e;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->F:Lbr/com/topaz/q0/e;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->k:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->n:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->l:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    return v0

    :catch_0
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public f()D
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->i:D

    return-wide v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->j:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->G:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->H:I

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->o:Ljava/util/List;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->p:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->s:I

    return v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/face/FaceStructure$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->B:Ljava/util/List;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->P:I

    return v0
.end method

.method public o()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbr/com/topaz/l/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->O:I

    return v0
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->N:J

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->u:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->w:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->v:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->E:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->z:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->A:I

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->a:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->t:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/face/FaceStructure;->m:Z

    return v0
.end method
