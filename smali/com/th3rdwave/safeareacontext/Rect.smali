.class Lcom/th3rdwave/safeareacontext/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field height:F

.field width:F

.field x:F

.field y:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/th3rdwave/safeareacontext/Rect;->x:F

    .line 11
    iput p2, p0, Lcom/th3rdwave/safeareacontext/Rect;->y:F

    .line 12
    iput p3, p0, Lcom/th3rdwave/safeareacontext/Rect;->width:F

    .line 13
    iput p4, p0, Lcom/th3rdwave/safeareacontext/Rect;->height:F

    return-void
.end method


# virtual methods
.method equalsToRect(Lcom/th3rdwave/safeareacontext/Rect;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 20
    :cond_0
    iget v1, p0, Lcom/th3rdwave/safeareacontext/Rect;->x:F

    iget v2, p1, Lcom/th3rdwave/safeareacontext/Rect;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/th3rdwave/safeareacontext/Rect;->y:F

    iget v2, p1, Lcom/th3rdwave/safeareacontext/Rect;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/th3rdwave/safeareacontext/Rect;->width:F

    iget v2, p1, Lcom/th3rdwave/safeareacontext/Rect;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/th3rdwave/safeareacontext/Rect;->height:F

    iget p1, p1, Lcom/th3rdwave/safeareacontext/Rect;->height:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
