.class public final Lcom/google/protobuf/FieldInfo$Builder;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/FieldInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Field;

.field private b:Lcom/google/protobuf/FieldType;

.field private c:I

.field private d:Ljava/lang/reflect/Field;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/google/protobuf/f0;

.field private i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:Lcom/google/protobuf/Internal$EnumVerifier;

.field private l:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/FieldInfo;
    .locals 8

    .line 1
    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->h:Lcom/google/protobuf/f0;

    if-eqz v2, :cond_0

    .line 2
    iget v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->i:Ljava/lang/Class;

    iget-boolean v4, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    iget-object v5, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/FieldInfo;->f(ILcom/google/protobuf/FieldType;Lcom/google/protobuf/f0;Ljava/lang/Class;ZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->j:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static {v1, v2, v0, v3}, Lcom/google/protobuf/FieldInfo;->e(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/FieldInfo$Builder;->d:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->f:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    iget v5, p0, Lcom/google/protobuf/FieldInfo$Builder;->e:I

    iget-boolean v6, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    iget-object v7, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/FieldInfo;->j(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    iget v5, p0, Lcom/google/protobuf/FieldInfo$Builder;->e:I

    iget-boolean v6, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    iget-object v7, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/FieldInfo;->i(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    if-eqz v0, :cond_5

    .line 10
    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->l:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/FieldInfo;->d(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v4, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/protobuf/FieldInfo;->h(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->l:Ljava/lang/reflect/Field;

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    iget-boolean v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/FieldInfo;->c(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Z)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/FieldInfo;->g(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0
.end method

.method public withCachedSizeField(Ljava/lang/reflect/Field;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->l:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public withEnforceUtf8(Z)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    return-object p0
.end method

.method public withEnumVerifier(Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object p0
.end method

.method public withField(Ljava/lang/reflect/Field;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->h:Lcom/google/protobuf/f0;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set field when building a oneof."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFieldNumber(I)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    return-object p0
.end method

.method public withMapDefaultEntry(Ljava/lang/Object;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public withOneof(Lcom/google/protobuf/f0;Ljava/lang/Class;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/f0;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/FieldInfo$Builder;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->d:Ljava/lang/reflect/Field;

    if-nez p1, :cond_0

    .line 2
    iput-object p2, p0, Lcom/google/protobuf/FieldInfo$Builder;->i:Ljava/lang/Class;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set oneof when field or presenceField have been provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withPresence(Ljava/lang/reflect/Field;I)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 1

    const-string v0, "presenceField"

    .line 1
    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->d:Ljava/lang/reflect/Field;

    .line 2
    iput p2, p0, Lcom/google/protobuf/FieldInfo$Builder;->e:I

    return-object p0
.end method

.method public withRequired(Z)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->f:Z

    return-object p0
.end method

.method public withType(Lcom/google/protobuf/FieldType;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    return-object p0
.end method
